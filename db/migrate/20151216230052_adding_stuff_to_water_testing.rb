class AddingStuffToWaterTesting < ActiveRecord::Migration
  def up
    add_attachment :water_testings, :water_testing_pic
  end

  def down
    remove_attachment :water_testings, :water_testing_pic
  end
end
