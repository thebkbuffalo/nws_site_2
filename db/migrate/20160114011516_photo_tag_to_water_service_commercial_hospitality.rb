class PhotoTagToWaterServiceCommercialHospitality < ActiveRecord::Migration
  def change
    add_column :softners, :softner_tag, :text
    add_column :chlorine_removals, :chlorine_tag, :text
    add_column :ultrapures, :ultrapure_tag, :text
    add_column :custom_applications, :custom_app_tag, :text
  end
end
