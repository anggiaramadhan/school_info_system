class CreateClassroomsTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms_teachers do |t|
      t.references :classroom, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
