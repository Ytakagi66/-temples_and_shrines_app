class ApplicationController < ActionController::Base
  # 新規登録後のリダイレクト先をマイページへ
    def after_sign_in_path_for(resource)
      if current_user
        flash[:notice] = "ログインに成功しました" 
        /  #　指定したいパスに変更
      else
        flash[:notice] = "新規登録完了しました。次に名前を入力してください" 
        /  #　指定したいパスに変更
      end
    end    
end
