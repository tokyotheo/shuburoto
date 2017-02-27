class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|
      t.string :title
      t.string :description
      t.string :lecture_title
      t.string :instructor
      t.string :url
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end
