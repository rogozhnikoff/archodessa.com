class CreateThanks < ActiveRecord::Migration
  def change
    create_table :thanks do |t|
      t.string :name
      t.text :why

      t.timestamps
    end
  end
end
