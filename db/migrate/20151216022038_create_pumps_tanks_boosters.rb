class CreatePumpsTanksBoosters < ActiveRecord::Migration
  def change
    create_table :pumps_tanks_boosters do |t|

      t.timestamps null: false
    end
  end
end
