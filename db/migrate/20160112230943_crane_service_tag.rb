class CraneServiceTag < ActiveRecord::Migration
  def change
    add_column :crane_services, :crane_service_tag, :text
    add_column :trenchings, :trenching_tag, :text
    add_column :pumps_tanks_boosters, :ptb_tag, :text
  end
end
