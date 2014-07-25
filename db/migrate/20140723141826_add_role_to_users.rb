class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string

    User.create! do |u|
        u.email = 'admin@archodessa.com'
        u.password = 'password'
        u.role = 'administrator'
    end
  end
end
