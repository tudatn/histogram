class CreateEnrolls < ActiveRecord::Migration
  def up
    create_table :enrolls do |t|
      t.integer :student_id
      t.string :course_id
      t.float :percentage, null: false
      t.string :lettergrade
      t.timestamps
    end
    add_index:enrolls, [:student_id, :course_id], unique: true
  end

  def down
    drop_table :enrolls
  end
end
