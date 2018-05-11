class Student < ApplicationRecord
    has_many :student_cohorts
    has_many :cohorts, through: :student_cohorts 
    validates :age, numericality: {less_than: 150} 
end

 