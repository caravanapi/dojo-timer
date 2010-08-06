class CreateDojos < ActiveRecord::Migration
  def self.up
    create_table :dojos do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :dojos
  end
end
