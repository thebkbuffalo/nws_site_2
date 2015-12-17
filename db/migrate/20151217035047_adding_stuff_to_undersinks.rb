class AddingStuffToUndersinks < ActiveRecord::Migration
  def up
    add_attachment :undersinks, :undersink_pic
  end

  def down
    remove_attachment :undersinks, :undersink_pic
  end
end
