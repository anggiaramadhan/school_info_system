class CreateClassroomsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms_students do |t|
      t.references :classroom, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
