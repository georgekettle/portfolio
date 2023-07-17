class Blog < ApplicationRecord
    has_one_attached :cover_image
    has_rich_text :body

    default_scope { order(created_at: :desc) }

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :cover_image, presence: true
end
