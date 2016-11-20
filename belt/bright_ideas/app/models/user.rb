class User < ApplicationRecord
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :name, :alias, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	has_secure_password
	has_many :secrets, through: :likes
	has_many :likes, dependent: :destroy
end
