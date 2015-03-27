class AddAttachmentAvatarToContributions < ActiveRecord::Migration
  def self.up
    change_table :contributions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :contributions, :avatar
  end
end
