class ArticleComment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  has_many :comment_reply, class_name: 'ArticleComment', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'ArticleComment', optional: true
end
