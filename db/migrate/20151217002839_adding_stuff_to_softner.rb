class AddingStuffToSoftner < ActiveRecord::Migration
  def up
    add_attachment :softners, :softner_pic
  end

  def down
    remove_attachment :softners, :softner_pic
  end
end
