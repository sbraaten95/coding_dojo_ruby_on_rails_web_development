class Message < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :new_comments, as: :new_comment_duty
end
