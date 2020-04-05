class ApplicationController < ActionController::Base
<<<<<<< HEAD
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
=======
  def after_sign_out_path_for resource

    root_path

  end 

 

  def after_sign_in_path_for(resource) 

    mypage_path

  end
>>>>>>> 0fa44c41fa40d9564c1b13388bd8a9df3f581a7b
end
