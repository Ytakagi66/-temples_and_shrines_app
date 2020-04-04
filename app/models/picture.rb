class Picture < ApplicationRecord
  belongs_to :shrine
  mount_uploader :image, ImageUploader
  belongs_to :shrine
end
