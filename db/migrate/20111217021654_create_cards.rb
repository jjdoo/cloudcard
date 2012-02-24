class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :user_id
      t.string :store_id
      t.string :class
      t.string :card_number
      t.string :card_password
      t.string :authorized

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
