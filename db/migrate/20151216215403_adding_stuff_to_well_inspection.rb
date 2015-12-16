class AddingStuffToWellInspection < ActiveRecord::Migration
  def up
    add_attachment :well_inspections, :well_inspection_pic
  end

  def down
    remove_attachment :well_inspections, :well_inspection_pic
  end
end
