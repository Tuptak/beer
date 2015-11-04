class AddAvatarToBottles < ActiveRecord::Migration
  def up
    add_attachment :bottles, :avatar
  end

  def down
    remove_attachment :bottles, :avatar
  end
end
