class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
	t.string "first_name" , :limit => 25
	t.string "last_name" , :limit => 50
	t.string "e-mail" , :default => "" , :null => false
	t.string "password" , :limit => 40
        t.timestamps null: false
    end
  end

   def self.down
	drop_table :admin_users	
   end
end
