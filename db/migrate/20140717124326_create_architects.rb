class CreateArchitects < ActiveRecord::Migration
  def change
    create_table :architects do |t|
      t.string :name
      t.string :surname
      t.string :familyname
      t.string :avatar

      t.timestamps
    end
  end
end
