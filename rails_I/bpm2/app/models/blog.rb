class Blog < ApplicationRecord
	has_many :owners
	has_many :posts, through: :blogs
	has_many :messages, through: :posts
	has_many :new_comments, as: :new_comment_duty
end
