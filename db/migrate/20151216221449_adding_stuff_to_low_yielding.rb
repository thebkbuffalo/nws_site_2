class AddingStuffToLowYielding < ActiveRecord::Migration
  def up
    add_attachment :low_yielding_wells, :low_yield_pic
  end

  def down
    remove_attachment :low_yielding_wells, :low_yield_pic
  end
end
