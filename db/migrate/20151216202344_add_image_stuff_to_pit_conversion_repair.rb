class AddImageStuffToPitConversionRepair < ActiveRecord::Migration
  def up
    add_attachment :repair_conversion_pit_repairs, :rcpr_pic
  end

  def down
    remove_attachment :repairs_conversions_pit_repairs, :rcpr_pic
  end
end
