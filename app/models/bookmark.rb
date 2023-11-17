class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie


  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, presence: true, :uniqueness => {:scope => :list_id, message: "is already in the list"}
  validates :list, presence: true
end
