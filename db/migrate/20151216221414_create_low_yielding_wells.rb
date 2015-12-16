class CreateLowYieldingWells < ActiveRecord::Migration
  def change
    create_table :low_yielding_wells do |t|

      t.timestamps null: false
    end
  end
end
