class Comment < ApplicationRecord
  belongs_to :article, optional:true
  # has_many :replies,class_name: "Comment",
  #                         foreign_key: "comment_id", dependent: :destroy
  # belongs_to :parent_comment, class_name: "comment"
end
