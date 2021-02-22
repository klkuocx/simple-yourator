class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :requirements
      t.string :compensation
      t.integer :company_id

      t.timestamps
    end
  end
end
