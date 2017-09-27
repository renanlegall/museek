class Playlist < ApplicationRecord
  has_many :tracks, dependent: :destroy
  belongs_to :user
  has_attachment :photo
  has_many :upvotes, dependent: :destroy
  has_many :messages, dependent: :destroy
end
