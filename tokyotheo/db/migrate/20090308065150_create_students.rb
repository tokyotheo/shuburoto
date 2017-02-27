class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :mail
      t.string :password
      t.date :birth
      t.integer :sex
      t.integer :zip_code
      t.integer :prefecture
      t.string :address1
      t.string :address2
      t.string :tel1
      t.string :tel2
      t.date :baptized
      t.date :church

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
