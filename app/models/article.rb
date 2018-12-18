class Article < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

	belongs_to :user
	has_many :comments, dependent: :destroy

	has_one_attached :project_image
	has_one_attached :project_cover

    # Additionally can declare the category association as optional:
	# belongs_to :category, optional: true
	belongs_to :category 

	validates :title, presence: true, length: { maximum: 110 }
	validates :subtitle, presence: true, length: { maximum: 210 }
	validates :goal, presence: true
	validates :project_cover, presence: true
	validates :body, presence: true
end

