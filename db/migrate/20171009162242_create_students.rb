class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students, id: false do |t|
      t.integer :student_id, primary_key: true
      t.string :name, limit: 50, null: false
      t.string :email, default: '', null: false
      t.timestamps null: false
    end
  end

  def down
    drop_table :students
  end
end
