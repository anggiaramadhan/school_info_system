class Classroom < ApplicationRecord
    has_and_belongs_to_many :students
    has_and_belongs_to_many :teachers
    has_many :scores


    # show all students in classroom
    def show_students
        self.students
    end

    def show_students_with_rank
        self.students.select("students.id, students.name, avg(scores.value) as avg_scores")
            .joins(:scores)
            .order("avg_scores desc")
            .group("students.id, students.name")
    end

end
