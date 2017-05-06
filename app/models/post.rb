class Post < ApplicationRecord
  belongs_to :user, optional: true
  scope :available, ->(current_user) { where(public: true).where.not(user_id: current_user.id) }
end
