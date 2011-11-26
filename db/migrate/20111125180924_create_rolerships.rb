class CreateRolerships < ActiveRecord::Migration
  def change
    create_table :rolerships do |t|
      t.integer :role_id
      t.integer :project_id

      t.timestamps
    end
  end
end
