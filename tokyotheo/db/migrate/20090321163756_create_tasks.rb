class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.integer :lecture_id
      t.integer :instructor_id
      t.text :task
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
