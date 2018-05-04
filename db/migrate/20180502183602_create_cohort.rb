class CreateCohort < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.integer :instructor_id
      t.integer :course_id
    end
  end
end
