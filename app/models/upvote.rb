class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :playlist
  validates :user, uniqueness: { scope: :playlist }
end
