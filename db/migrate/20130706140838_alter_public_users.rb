class AlterPublicUsers < ActiveRecord::Migration
  
  def self.up
    puts "*** About to add an index ***"
    add_index("public_users", "username")
  end

  def self.down
  end
  
end
