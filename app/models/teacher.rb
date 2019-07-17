class Teacher < ApplicationRecord
    has_and_belongs_to_many :classrooms
    has_one :homeroom, class_name: "Classroom", foreign_key: "homeroom_id"

    has_and_belongs_to_many :subjects
end
