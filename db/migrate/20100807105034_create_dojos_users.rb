class CreateDojosUsers < ActiveRecord::Migration
  def self.up
    create_table :dojos_users, :id => false do |t|
      t.integer :dojo_id, :null => false
      t.integer :user_id, :null => false
    end
  end

  def self.down
    drop_table :dojos_users
  end
end
