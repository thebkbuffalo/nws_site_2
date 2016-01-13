class PhotoTagToWellStorage < ActiveRecord::Migration
  def change
    add_column :low_yielding_wells, :lyw_tag, :text
    add_column :irrigation_storages, :irrigation_storage_tag, :text
  end
end
