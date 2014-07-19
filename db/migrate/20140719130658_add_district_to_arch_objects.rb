class AddDistrictToArchObjects < ActiveRecord::Migration
  def change
    add_column :arch_objects, :district, :string
    add_column :arch_objects, :street, :string
    add_column :arch_objects, :num, :string
  end
end
