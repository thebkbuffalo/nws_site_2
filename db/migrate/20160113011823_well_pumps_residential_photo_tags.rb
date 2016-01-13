class WellPumpsResidentialPhotoTags < ActiveRecord::Migration
  def change
    add_column :new_service_lines, :nsl_tag, :text
    add_column :pumps_pressure_tanks, :ppt_tag, :text
    add_column :emergency_services, :es_tag, :text
    add_column :repair_conversion_pit_repairs, :rcpr_tag, :text
  end
end
