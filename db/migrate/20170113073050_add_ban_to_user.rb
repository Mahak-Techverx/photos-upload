class AddBanToUser < ActiveRecord::Migration[5.0]
 def self.up
    add_column :users, :ban, :boolean, :default => false, :null => false
    add_index  :users, :ban
  end

  def self.down
    remove_index  :users, :ban
    remove_column :users, :ban
  end
end
