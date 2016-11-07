class Comment < ApplicationRecord
	belongs_to :comment_duty, polymorphic: true
end
