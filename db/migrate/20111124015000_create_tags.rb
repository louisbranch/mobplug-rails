class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :category
      t.references :project
      t.timestamps
    end
    add_index :tags, :category_id
    add_index :tags, :project_id
  end
end
