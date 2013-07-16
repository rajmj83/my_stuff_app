class CreatePublicUsers < ActiveRecord::Migration
  def self.up
    # instructions for changing db to new state
     create_table :public_users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email_id", :default => "", :null => false
      t.string "password", :limit => 40
      t.string "username", :limit => 20
      t.string "hashed_password", :limit => 40
      t.string "salt", :limit => 40
      t.timestamps
     end
  end   

   def self.down
    # instratuction for changing db back to previous state
    drop_table :public_users
  end
end
