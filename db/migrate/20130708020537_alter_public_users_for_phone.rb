class AlterPublicUsersForPhone < ActiveRecord::Migration
  
  def self.up
    puts "**starting migration for category_items : Changing phone number field from integer to string to fix form helper issue **"
    change_column("category_items", "phonenumber", :string, :limit => 20)
  end

  def self.down
    change_column("category_items", "phonenumber", :integer, :limit=>10, :null => false)
  end
  
end
