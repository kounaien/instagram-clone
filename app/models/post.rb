class Post < ApplicationRecord
    mount_uploader :image, ImageUploader

    scope :active, -> { where active: true }

    belongs_to :user
end
