class Post < ApplicationRecord
    default_scope { order created_at: :desc }
    mount_uploader :image, ImageUploader

    scope :active, -> { where active: true }
    before_create :set_active


    private
    def set_active
        self.active = true
    end

    belongs_to :user

    has_many :likes
    has_many :comments
end
