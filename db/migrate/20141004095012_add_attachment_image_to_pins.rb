class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image
    add_column :pins, :image_file_name, :string
    add_column :pins, :image_content_type, :string
    add_column :pins, :image_file_size, :integer
    add_column :pins, :image_updated_at, :datetime
    end
  end

  def self.down
    remove_attachment :pins, :image
    remove_column :pins, :image_file_name
    remove_column :pins, :image_content_type
    remove_column :pins, :image_file_size
    remove_column :pins, :image_updated_at
  end
end
