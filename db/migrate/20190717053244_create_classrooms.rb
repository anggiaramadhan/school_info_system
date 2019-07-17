class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :semester
      t.integer :homeroom_id

      t.timestamps
    end
    add_index :classrooms, :homeroom_id
  end
end
