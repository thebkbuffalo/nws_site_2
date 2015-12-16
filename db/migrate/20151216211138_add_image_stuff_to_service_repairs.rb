class AddImageStuffToServiceRepairs < ActiveRecord::Migration
  def up
    add_attachment :service_repairs, :service_repair_pic
  end

  def down
    remove_attachment :service_repairs, :service_repair_pic
  end
end
