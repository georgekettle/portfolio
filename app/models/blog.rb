class Blog < ApplicationRecord
    has_one_attached :cover_image

    validates :title, presence: true
    validates :content, presence: true, length: { minimum: 10 }
    validates :cover_image, presence: true
end
