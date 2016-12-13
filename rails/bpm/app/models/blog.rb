class Blog < ApplicationRecord
	has_many :posts, dependent: :destroy
	has_many :messages, through: :blogs
	validates :name, :description, presence: true
end
