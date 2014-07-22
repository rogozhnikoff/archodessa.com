class CreateArchObjectsTypes < ActiveRecord::Migration
  def change
    create_table :arch_objects_types do |t|
      t.integer :arch_object_id
      t.integer :type_id

      t.timestamps
    end
  end
end
