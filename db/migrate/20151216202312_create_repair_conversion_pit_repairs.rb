class CreateRepairConversionPitRepairs < ActiveRecord::Migration
  def change
    create_table :repair_conversion_pit_repairs do |t|

      t.timestamps null: false
    end
  end
end
