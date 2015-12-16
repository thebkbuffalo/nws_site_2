class AddingStuffToIrrigationService < ActiveRecord::Migration
  def up
    add_attachment :irrigation_storages, :irrigation_storage_pic
  end

  def down
    remove_attachment :irrigation_storages, :irrigation_storage_pic
  end
end
