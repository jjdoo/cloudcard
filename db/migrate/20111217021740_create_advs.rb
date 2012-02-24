class CreateAdvs < ActiveRecord::Migration
  def self.up
    create_table :advs do |t|
      t.string :adv_id
      t.string :store_id
      t.string :title
      t.string :text
      t.string :pic
      t.string :start_time
      t.string :end_time
      t.string :push
      t.string :remain

      t.timestamps
    end
  end

  def self.down
    drop_table :advs
  end
end
