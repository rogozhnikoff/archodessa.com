class RemoveAvatarFromArchitect < ActiveRecord::Migration
  def change
    remove_column :architects, :avatar
  end
end
