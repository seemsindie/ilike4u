class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :image_url
      t.text :caption
      t.string :hashtag
      t.references :user, foreign_key: true
      t.string :user_ig_media_id
      t.integer :likes_received
      t.datetime :launched_at
      t.datetime :stopped_at

      t.timestamps
    end
  end
end
