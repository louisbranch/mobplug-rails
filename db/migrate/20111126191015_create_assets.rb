class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :project
      t.has_attached_file :image
      t.timestamps
    end
    add_index :assets, :project_id
  end
end
