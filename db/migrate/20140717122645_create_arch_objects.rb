class CreateArchObjects < ActiveRecord::Migration
  def change
    create_table :arch_objects do |t|
      t.string :name
      t.string :avatar
      t.date :foundation
      t.string :status

      t.timestamps
    end
  end
end
