class AddSaltToStore < ActiveRecord::Migration
  def self.up
    add_column :stores, :salt, :string
  end

  def self.down
    remove_column :stores, :salt
  end
end
