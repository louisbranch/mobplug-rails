class CreateRolerships < ActiveRecord::Migration
  def change
    create_table :rolerships do |t|
      t.references :role
      t.references :project
      t.timestamps
    end
    add_index :rolerships, :role_id
    add_index :rolerships, :project_id
  end
end
