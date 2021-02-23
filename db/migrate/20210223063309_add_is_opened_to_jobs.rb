class AddIsOpenedToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :is_opened, :boolean, :default => true
  end
end
