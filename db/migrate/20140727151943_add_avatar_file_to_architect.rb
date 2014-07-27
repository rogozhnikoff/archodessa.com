class AddAvatarFileToArchitect < ActiveRecord::Migration
  def self.up
    change_table :architects do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :architects, :avatar
  end
end
