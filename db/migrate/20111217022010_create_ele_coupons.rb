class CreateEleCoupons < ActiveRecord::Migration
  def self.up
    create_table :ele_coupons do |t|
      t.string :adv_id
      t.string :barcode
      t.string :paid
      t.date :eff_start_time
      t.date :eff_end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :ele_coupons
  end
end
