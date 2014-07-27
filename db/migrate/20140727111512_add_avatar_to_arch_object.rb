class AddAvatarToArchObject < ActiveRecord::Migration
  def change
    remove_column :arch_objects, :avatar, :string
  end
end
