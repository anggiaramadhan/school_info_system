class Score < ApplicationRecord
  belongs_to :classroom
  belongs_to :student
  belongs_to :subject
end
