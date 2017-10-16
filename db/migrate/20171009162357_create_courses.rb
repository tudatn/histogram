class CreateCourses < ActiveRecord::Migration
  def up
    create_table :courses, id: false do |t|
      t.string :course_id, primary_key: true
      t.string :description
      t.timestamps null: false
    end
  end

  def down
    drop_table :courses
  end
end
