class StudentCohort < ApplicationRecord
    belongs_to :students
    belongs_to :cohorts
end