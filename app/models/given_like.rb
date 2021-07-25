class GivenLike < ApplicationRecord
  belongs_to :job

  has_one_attached :image
end
