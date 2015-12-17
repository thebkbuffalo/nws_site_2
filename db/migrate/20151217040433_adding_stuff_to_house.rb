class AddingStuffToHouse < ActiveRecord::Migration
  def up
    add_attachment :whole_houses, :house_pic
  end

  def down
    remove_attachment :whole_houses, :house_pic
  end
end
