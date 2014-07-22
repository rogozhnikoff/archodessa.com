class CreateArchObjectsArchitects < ActiveRecord::Migration
  def change
    create_table :arch_objects_architects do |t|
      t.references :arch_object_id, index: true
      t.references :architect_id, index: true

      t.timestamps
    end
  end
end
