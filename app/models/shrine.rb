class Shrine < ApplicationRecord
    mount_uploader :image, ImageUploader
    attr_accessor :remember_token
    validates :name, presence: true
    validates :adress, presence: true
    validates :article, null: false
    validates :location, null: false
    validates :user_id, null: false
    get "login" => "users#login-submit"
end
