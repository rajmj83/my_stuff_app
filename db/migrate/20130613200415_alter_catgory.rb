class AlterCatgory < ActiveRecord::Migration
  
  def self.up
    # instructions for changing db to new state
    rename_column("categories","category_name", "name")
    rename_column("categories","category_symbol", "symbol")
  end   

   def self.down
    # instructions for changing db back to previous state
    rename_column("categories", "symbol","category_symbol")
    rename_column("categories","name","category_name")
  end
  
end
