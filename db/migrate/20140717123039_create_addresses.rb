class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :district
      t.string :street
      t.string :num

      t.timestamps
    end
  end
end
