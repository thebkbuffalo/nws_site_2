class AddingStuffToChlorineRemoval < ActiveRecord::Migration
  def up
    add_attachment :chlorine_removals, :chlorine_pic
  end

  def down
    remove_attachment :chlorine_removals, :chlorine_pic
  end
end
