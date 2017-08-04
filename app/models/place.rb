class Place < ApplicationRecord
  has_many :commentable, as: :commentable
end
