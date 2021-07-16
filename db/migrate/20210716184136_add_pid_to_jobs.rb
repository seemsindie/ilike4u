class AddPidToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :process_pid, :string
  end
end
