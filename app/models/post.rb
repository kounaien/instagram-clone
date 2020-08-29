class Post < ApplicationRecord
    default_scope { order created_at: :desc }
    mount_uploader :image, ImageUploader

    scope :active, -> { where active: true }
    before_create :set_active

    def total_likes
        0
    end

    private
    def set_active
        self.active = true
    end

    belongs_to :user

    has_many :likes
end
