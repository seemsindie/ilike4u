class Job < ApplicationRecord
  attr_accessor :instagram_username, :instagram_password
  has_many :given_likes
  belongs_to :user

end
