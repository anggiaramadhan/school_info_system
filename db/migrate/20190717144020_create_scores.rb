class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :classroom, foreign_key: true
      t.references :student, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
