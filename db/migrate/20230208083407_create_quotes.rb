class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :author, default: 'Anonymous'
      t.string :source

      t.timestamps
    end
  end
end
