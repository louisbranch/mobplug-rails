class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :launch
      t.string :url
      t.string :slug, :unique => true
      t.timestamps
    end
  end
end
