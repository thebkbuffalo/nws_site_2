class AddImageStuffToPumpsPressureTanks < ActiveRecord::Migration
  def up
    add_attachment :pumps_pressure_tanks, :ppt_pic
  end

  def down
    remove_attachment :pumps_pressure_tanks, :ppt_pic
  end
end
