class Message < ApplicationRecord
  belongs_to :playlist
  belongs_to :user
  validates :content, presence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end
end
