class AddingThingsToPtb < ActiveRecord::Migration
  def up
    add_attachment :pumps_tanks_boosters, :ptb_pic
  end

  def down
    remove_attachment :pumps_tanks_boosters, :ptb_pic
  end
end
