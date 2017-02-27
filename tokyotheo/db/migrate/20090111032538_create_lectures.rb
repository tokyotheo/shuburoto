class CreateLectures < ActiveRecord::Migration
  def self.up
    create_table :lectures do |t|
      t.string :title
      t.string :description
      t.string :category1
      t.string :category2
      t.integer :credit
      t.integer :price
      t.string :instructor
      t.string :purpose
      t.text :plan
      t.string :evaluation
      t.text :textbook
      t.string :url
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :lectures
  end
end
