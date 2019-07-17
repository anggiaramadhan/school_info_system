class Student < ApplicationRecord
    attr_accessor :average_scores

    has_and_belongs_to_many :classrooms
    has_many :scores

    def calculate_average_scores
        self.average_scores = self.scores.average("value")
    end
end
