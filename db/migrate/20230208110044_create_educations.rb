class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :company
      t.string :company_img
      t.string :start_year
      t.string :end_year
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
