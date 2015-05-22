class AddExpiresAfterToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :expires_after, :interval
  end
end
