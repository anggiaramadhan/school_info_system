json.partial! "classrooms/classroom", classroom: @classroom
json.students @students, :id, :name, :avg_scores
