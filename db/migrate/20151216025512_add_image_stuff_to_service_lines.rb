class AddImageStuffToServiceLines < ActiveRecord::Migration
  def up
    add_attachment :new_service_lines, :nsl_pic
  end

  def down
    remove_attachment :new_service_lines, :nsl_pic
  end
end
