class Cohort < ApplicationRecord
    has_one :course
    has_one :instructor
    has_many :students, through: :studentcohorts
end