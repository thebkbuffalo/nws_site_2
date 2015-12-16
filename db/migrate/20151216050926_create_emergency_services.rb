class CreateEmergencyServices < ActiveRecord::Migration
  def change
    create_table :emergency_services do |t|

      t.timestamps null: false
    end
  end
end
