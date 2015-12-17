class CreateWaterCoolers < ActiveRecord::Migration
  def change
    create_table :water_coolers do |t|

      t.timestamps null: false
    end
  end
end
