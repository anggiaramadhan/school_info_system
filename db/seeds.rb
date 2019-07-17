# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Classroom.delete_all
Student.delete_all
Teacher.delete_all

2.times do
    Teacher.create(name: Faker::Name.name)
end

10.times do
    Student.create(name: Faker::Name.unique.name)
end

Teacher.all.ids.each do |tcr|
    ["1A", "1B"].each.with_index(1) do |cls, idx|
        classroom = Classroom.create(name: cls, semester: idx, homeroom_id: tcr)
    end
end