class Article < ApplicationRecord
  belongs_to :user
  has_many :article_comments
   has_many :pictures, as: :imageable
end
