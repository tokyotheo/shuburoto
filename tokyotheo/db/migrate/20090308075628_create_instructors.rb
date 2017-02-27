class CreateInstructors < ActiveRecord::Migration
  def self.up
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.integer :lecture_id
      t.integer :report_task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :instructors
  end
end
