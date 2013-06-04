class AddPhotoToFood < ActiveRecord::Migration
  def self.up
    add_attachment :foods, :photo
  end

  def self.down
    remove_attachment :foods, :photo
  end
end
