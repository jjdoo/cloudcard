class CreateCardClasses < ActiveRecord::Migration
  def self.up
    create_table :card_classes do |t|
      t.string :store_id
      t.string :class

      t.timestamps
    end
  end

  def self.down
    drop_table :card_classes
  end
end
