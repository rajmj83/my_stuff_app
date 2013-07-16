class AlterCategoryItems < ActiveRecord::Migration
  
  def self.up
    puts "*** Renaming column ***"
    rename_column("category_items", "admin_user_id", "public_user_id")
  end

  def self.down
    rename_column("category_items", "public_user_id", "admin_user_id")
  end
  
end
