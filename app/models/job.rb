class Job < ApplicationRecord
  has_many :given_likes
  belongs_to :user
end
