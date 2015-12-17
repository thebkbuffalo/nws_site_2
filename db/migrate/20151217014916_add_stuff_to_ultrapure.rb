class AddStuffToUltrapure < ActiveRecord::Migration
  def up
    add_attachment :ultrapures, :ultrapure_pic
  end

  def down
    remove_attachment :ultrapures, :ultrapure_pic
  end
end
