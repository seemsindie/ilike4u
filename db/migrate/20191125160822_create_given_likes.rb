class CreateGivenLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :given_likes do |t|
      t.string :ig_media_id
      t.string :ig_user_id
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
