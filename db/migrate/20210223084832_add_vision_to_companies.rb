class AddVisionToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :vision, :text
  end
end
