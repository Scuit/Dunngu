class AddAttachmentImageToPublicities < ActiveRecord::Migration
  def self.up
    change_table :publicities do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :publicities, :image
  end
end
