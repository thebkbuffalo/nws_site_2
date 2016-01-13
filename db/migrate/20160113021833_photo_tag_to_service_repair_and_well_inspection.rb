class PhotoTagToServiceRepairAndWellInspection < ActiveRecord::Migration
  def change
    add_column :service_repairs, :service_repair_tag, :text
    add_column :well_inspections, :well_inspection_tag, :text
  end
end
