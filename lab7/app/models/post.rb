class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :content, presence: true, length: { minimum: 20 }

    validate :correct_image_mime_type

    private
    
    def correct_image_mime_type
        if image.attached? && !image.content_type.in?(%('image/jpeg image/png'))
          errors.add(:image, 'must be a JPEG or PNG')
        end
      end
  end

  