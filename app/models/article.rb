class Article < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy


	has_one_attached :project_image
	has_one_attached :project_cover

	validates :title, presence: true, length: { maximum: 110 }
end
