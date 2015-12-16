class AddStuffToFloodPrevention < ActiveRecord::Migration
  def up
    add_attachment :flood_preventions, :flood_pic
  end

  def down
    remove_attachment :flood_preventions, :flood_pic
  end
end
