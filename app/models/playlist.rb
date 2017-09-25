class Playlist < ApplicationRecord
  has_many :tracks
  belongs_to :user
  has_attachment :photo
  has_many :upvotes
end
