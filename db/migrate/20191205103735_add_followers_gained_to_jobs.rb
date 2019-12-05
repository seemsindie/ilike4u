class AddFollowersGainedToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :followers_gained, :integer
  end
end
