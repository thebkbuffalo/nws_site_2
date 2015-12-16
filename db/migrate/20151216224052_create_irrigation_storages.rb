class CreateIrrigationStorages < ActiveRecord::Migration
  def change
    create_table :irrigation_storages do |t|

      t.timestamps null: false
    end
  end
end
