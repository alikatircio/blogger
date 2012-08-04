class AddAttachmentPhotoToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :posts, :photo
  end
end
