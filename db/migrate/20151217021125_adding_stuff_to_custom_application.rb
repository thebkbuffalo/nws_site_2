class AddingStuffToCustomApplication < ActiveRecord::Migration
  def up
    add_attachment :custom_applications, :custom_app_pic
  end

  def down
    remove_attachment :custom_applications, :custom_app_pic
  end
end
