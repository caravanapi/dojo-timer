class AddTimeToDojos < ActiveRecord::Migration
  def self.up
    add_column :dojos, :time, :integer
  end

  def self.down
    remove_column :dojos, :time
  end
end
