class Post < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  has_many :messages
  has_many :new_comments, as: :new_comment_duty
end
