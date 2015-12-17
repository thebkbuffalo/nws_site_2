class AddingThingsToBasement < ActiveRecord::Migration
  def up
    add_attachment :basements, :basement_pic
  end

  def down
    remove_attachment :basements, :basement_pic
  end
end
