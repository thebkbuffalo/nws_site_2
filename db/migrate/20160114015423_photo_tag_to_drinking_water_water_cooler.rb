class PhotoTagToDrinkingWaterWaterCooler < ActiveRecord::Migration
  def change
    add_column :water_coolers, :water_cooler_tag, :text
    add_column :icemakers, :icemaker_tag, :text
  end
end
