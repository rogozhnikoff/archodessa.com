class AddUserIdToArchObjects < ActiveRecord::Migration
  def change
    add_column :arch_objects, :user_id, :integer
  end
end
