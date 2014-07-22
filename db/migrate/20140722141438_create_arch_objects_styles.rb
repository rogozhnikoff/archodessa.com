class CreateArchObjectsStyles < ActiveRecord::Migration
  def change
    create_table :arch_objects_styles do |t|
      t.integer :arch_object_id
      t.integer :style_id

      t.timestamps
    end
  end
end
