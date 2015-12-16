class CreatePumpsPressureTanks < ActiveRecord::Migration
  def change
    create_table :pumps_pressure_tanks do |t|

      t.timestamps null: false
    end
  end
end
