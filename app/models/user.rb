class User < ApplicationRecord
  has_many :jobs
  validates :ig_user_id, presence: true
end
