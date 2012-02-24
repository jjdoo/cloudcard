class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string :store_id
      t.string :store_name
      t.string :store_address
      t.string :contact
      t.string :license_id
      t.string :logo
      t.string :store_password
      t.string :parent_store_id
      t.string :hot

      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
