class AddingImageStuffToTrench < ActiveRecord::Migration
  def up
    add_attachment :trenchings, :trench_pic
  end

  def down
    remove_attachment :trenchings, :trench_pic
  end
end
