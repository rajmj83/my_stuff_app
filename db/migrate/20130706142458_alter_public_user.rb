class AlterPublicUser < ActiveRecord::Migration
  
  def self.up
    puts "*** Removing column ***"
    remove_column("public_users", "password")
  end

  def self.down
    puts "*** Addinging column ***"
    add_column("public_users", "password", :string, :limit => 40)
  end
  
end
