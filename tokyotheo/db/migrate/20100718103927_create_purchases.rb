class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.string :user_id
      t.integer :lecture_no
      t.date :start
      t.date :end

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
