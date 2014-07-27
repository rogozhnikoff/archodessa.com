class AddAttachmentAvatarToArchObjects < ActiveRecord::Migration
  def self.up
    change_table :arch_objects do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :arch_objects, :avatar
  end
end
