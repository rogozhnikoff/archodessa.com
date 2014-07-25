class UsersIds < ActiveRecord::Migration
  def change
    add_column :architects, :user_id, :integer
    add_column :articles, :user_id, :integer
  end
end
