class CreateCategoryItems < ActiveRecord::Migration
  def self.up
    # instructions for changing db to new state
     create_table :category_items do |t|
      t.integer "category_id"
      t.integer "admin_user_id"
      t.string "name", :limit => 60, :null => false
      t.string "address", :limit => 80, :null => false
      t.integer "phonenumber", :limit=>10, :null => false
      t.string "notes", :limit => 100, :null => false
      t.timestamps
     end
     add_index("category_items","category_id")
     add_index("category_items","admin_user_id")
  end   

   def self.down
    # instructions for changing db back to previous state
    drop_table :category_items
  end
end
