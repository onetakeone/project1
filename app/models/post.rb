class Post < ApplicationRecord
  has_many :commentable, as: :commentable
end
