class Chatroom < ApplicationRecord
  has_many :chatroom_users, dependent: :destroy
  has_many :users, through: :chatroom_users
  has_many :messages, dependent: :destroy
  has_many :elements, dependent: :destroy
  validates :name, presence: true
  scope :public_channels, ->{ where(direct_message: false) }
  scope :direct_messages, ->{ where(direct_message: true) }

end
