class Course < ApplicationRecord
    has_many :cohorts
    validates :total_hours, numericality: {greater_than: 0}
end