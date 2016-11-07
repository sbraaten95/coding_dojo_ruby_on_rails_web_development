class NewComment < ApplicationRecord
	belongs_to :new_comment_duty, polymorphic: true
end
