class Student < ApplicationRecord
    has_many :cohorts, through: :studentcohorts  
end