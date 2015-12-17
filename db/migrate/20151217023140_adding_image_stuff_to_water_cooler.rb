class AddingImageStuffToWaterCooler < ActiveRecord::Migration
  def up
    add_attachment :water_coolers, :water_cooler_pic
  end

  def down
    remove_attachment :water_coolers, :water_cooler_pic
  end
end
