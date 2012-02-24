class AddAttributesToCardClass < ActiveRecord::Migration
  def self.up
    add_column :card_classes, :card_name, :string
    add_column :card_classes, :card_id, :string
    add_column :card_classes, :card_desc, :string
    add_column :card_classes, :card_img, :string
  end

  def self.down
    remove_column :card_classes, :card_img
    remove_column :card_classes, :card_desc
    remove_column :card_classes, :card_id
    remove_column :card_classes, :card_name
  end
end
