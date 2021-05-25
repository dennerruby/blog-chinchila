class New < ApplicationRecord
    has_one_attached :featured_image
    has_rich_text :content
end
