class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6,
    too_short: "%{comment} characters is the minimum allowed"
  }
  validates :movie_id, uniqueness: { scope: :list_id }
end
