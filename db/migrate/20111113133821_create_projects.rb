class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :resume
      t.text :description
      t.string :url
      t.string :slug, :unique => true

      t.timestamps
    end
  end
end
