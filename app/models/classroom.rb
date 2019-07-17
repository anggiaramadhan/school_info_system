class Classroom < ApplicationRecord
    has_and_belongs_to_many :students
    has_and_belongs_to_many :teachers
    has_many :scores


    # show all students in classroom
    def show_students
        self.students
    end

    # show all students with rank average scores attribute
    def show_students_with_rank
        self.students.select("students.id, students.name, avg(scores.value) as avg_scores")
            .joins(:scores)
            .order("avg_scores desc")
            .group("students.id, students.name")
    end

    # finding best scores for specific semester
    def self.best_scores(semester, subject)
        Classroom.select("classrooms.semester, subjects.name as subject_name, students.name as student_name, scores.value as score_value")
            .joins(:scores)
            .joins("INNER JOIN subjects ON scores.subject_id = subjects.id")
            .joins("INNER JOIN students ON scores.student_id = students.id")
            .where("classrooms.semester = ? AND subjects.id = ?", semester, subject)
            .order("scores.value desc").first
    end

end
