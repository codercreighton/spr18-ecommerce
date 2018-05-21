class Product < ApplicationRecord
	belongs_to :category

	mount_uploader :image, ImageUploader

	validates :image, presence: true
end
