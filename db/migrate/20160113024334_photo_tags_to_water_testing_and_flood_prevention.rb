class PhotoTagsToWaterTestingAndFloodPrevention < ActiveRecord::Migration
  def change
    add_column :water_testings, :water_testing_tag, :text
    add_column :flood_preventions, :flood_prevention_tag, :text
  end
end
