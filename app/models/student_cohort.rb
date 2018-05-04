class StudentCohort < ApplicationRecord
    has_many :students
    has_many :cohorts
end

