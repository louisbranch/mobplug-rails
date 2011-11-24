class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :category_id
      t.integer :project_id

      t.timestamps
    end
  end
end
