class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_id
      t.string :user_name
      t.string :nickname
      t.string :gender
      t.date :birthday
      t.string :age
      t.string :occupation
      t.string :line_phone
      t.string :mobile_phone
      t.string :email
      t.string :user_address
      t.string :lock
      t.string :hashed_password
      t.string :id_number
      t.string :main_account
      t.string :imei

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
