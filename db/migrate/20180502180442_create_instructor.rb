class CreateInstructor < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.integer :salary
      t.string :education
    end
  end
end
