class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :company
      t.string :company_img
      t.string :start_year
      t.string :end_year
      t.string :role_title
      t.text :description

      t.timestamps
    end
  end
end
