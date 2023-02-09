class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :github_link
      t.string :image_url
      t.boolean :open_source, default: false

      t.timestamps
    end
  end
end
