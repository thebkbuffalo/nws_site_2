class AddImageStuffToEmergencyServices < ActiveRecord::Migration
  def up
    add_attachment :emergency_services, :emergency_pic
  end

  def down
    remove_attachment :emergency_services, :emergency_pic
  end
end
