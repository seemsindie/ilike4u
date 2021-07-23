class Job < ApplicationRecord
  attr_accessor :instagram_username, :instagram_password
  has_many :given_likes
  belongs_to :user

  has_one_attached :image
  has_one_attached :avatar
end
