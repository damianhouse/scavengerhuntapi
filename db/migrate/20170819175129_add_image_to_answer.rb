class AddImageToAnswer < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :answers, :image
  end

  def self.down
    remove_attachment :answers, :image
  end
end
