class CreateFootObjs < ActiveRecord::Migration
  def change
    create_table :foot_objs do |t|
      t.string :name
      t.boolean :enable
      t.text :body
      t.string :picture

      t.timestamps
    end
  end
end
