class Hotel < ApplicationRecord
	has_many_attached :hotel_images, dependent: :destroy
end
