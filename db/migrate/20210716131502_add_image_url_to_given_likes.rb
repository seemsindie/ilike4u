class AddImageUrlToGivenLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :given_likes, :image_url, :string
  end
end
