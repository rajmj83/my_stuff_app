class CreateCategories < ActiveRecord::Migration
  def self.up
    # instructions for changing db to new state
     create_table :categories do |t|
      t.string "category_name", :limit => 50
      t.string "category_symbol", :limit => 4
      t.timestamps
     end
  end   

   def self.down
    # instratuction for changing db back to previous state
    drop_table :categories
  end
end
