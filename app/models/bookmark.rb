class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6, too_short: 'should be at least %<count> long' }
end
