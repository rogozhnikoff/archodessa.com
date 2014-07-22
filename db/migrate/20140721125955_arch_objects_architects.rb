class ArchObjectsArchitects < ActiveRecord::Migration
  def change
    create_table :arch_objects_architects, :id => false do |t|
      t.references :arch_object, :architect
    end
  end
end
