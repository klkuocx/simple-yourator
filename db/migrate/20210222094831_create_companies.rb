class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :introduction
      t.text :news
      t.text :benefits

      t.timestamps
    end
  end
end
