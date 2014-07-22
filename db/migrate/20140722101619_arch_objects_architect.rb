class ArchObjectsArchitect < ActiveRecord::Migration
  def change
    drop_table :arch_objects_architects
    create_table :arch_objects_architects do |t|
      t.integer :arch_object_id
      t.integer :architect_id
      t.timestamps
    end
  end
end
