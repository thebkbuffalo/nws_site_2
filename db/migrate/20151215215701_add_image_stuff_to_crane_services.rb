class AddImageStuffToCraneServices < ActiveRecord::Migration
  def up
    add_attachment :crane_services, :crane_pic
  end

  def down
    remove_attachment :crane_services, :crane_pic
  end
end
