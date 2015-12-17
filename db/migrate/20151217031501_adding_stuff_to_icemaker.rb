class AddingStuffToIcemaker < ActiveRecord::Migration
  def up
    add_attachment :icemakers, :icemaker_pic
  end

  def down
    remove_attachment :icemakers, :icemaker_pic
  end
end
