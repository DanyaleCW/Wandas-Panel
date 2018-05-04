# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create(user_name: 'Mira Manickam', email: 'mira@pamelaspanel.com', password: '1234')

Instructor.create(fname: 'Carissa', lname: 'Moore', age: 25, salary: '51,000' , education: 'Champion')
Instructor.create(fname: 'Kelia', lname: 'Moniz', age: 26, salary: '52,000', education: 'Master')
Instructor.create(fname: 'Malia', lname: 'Manuel', age: 27, salary: '53,000', education: 'Pro')

Student.create(fname: 'Maya', lname: 'Gabeira', age: 20, education: 'Beginner')
Student.create(fname: 'Alana', lname: 'Blanchard', age: 21, education: 'Beginner-Intermediate')
Student.create(fname: 'Coco', lname: 'Ho', age: 22, education: 'Intermediate')
Student.create(fname: 'Sage', lname: 'Erickson', age: 23, education: 'Advanced')

Course.create(name: 'Surfing 101', total_hours: 10)
Course.create(name: 'Surfing 202', total_hours: 15)
Course.create(name: 'Kite Surfing 101', total_hours: 10)
Course.create(name: 'Kite Surfing 202', total_hours: 15)
Course.create(name: 'Wake Surfing 101', total_hours: 10)
Course.create(name: 'Wake Surfing 202', total_hours: 15)
Course.create(name: 'Board Maintenance', total_hours: 2)
  
Cohort.create(name: 'Spring 2018', start_date: 'March 31, 2018', end_date: 'April 8, 2018',instructor_id: 1, course_id: 1)
Cohort.create(name: 'Summer 2018', start_date: 'June 23, 2018', end_date: 'July 7, 2018',instructor_id: 2, course_id: 1)
Cohort.create(name: 'Summer 2018', start_date: 'May 5, 2018', end_date: 'June 9, 2018',instructor_id: 3, course_id: 2)
Cohort.create(name: 'Fall 2018', start_date: 'August 4, 2018', end_date: 'September 1, 2018',instructor_id: 1, course_id: 2)
Cohort.create(name: 'Spring 2018', start_date: 'March 31, 2018', end_date: 'April 8, 2018',instructor_id: 2, course_id: 3)
Cohort.create(name: 'Summer 2018', start_date: 'June 23, 2018', end_date: 'July 7, 2018',instructor_id: 3, course_id: 3)
Cohort.create(name: 'Summer 2018', start_date: 'June 23, 2018', end_date: 'July 7, 2018',instructor_id: 1, course_id: 4)
Cohort.create(name: 'Fall 2018', start_date: 'August 4, 2018', end_date: 'September 1, 2018',instructor_id: 2, course_id: 4)
Cohort.create(name: 'Spring 2018', start_date: 'March 31, 2018', end_date: 'April 8, 2018',instructor_id: 3, course_id: 5)
Cohort.create(name: 'Summer 2018', start_date: 'June 23, 2018', end_date: 'July 7, 2018',instructor_id: 1, course_id: 5)
Cohort.create(name: 'Summer 2018', start_date: 'June 23, 2018', end_date: 'July 7, 2018',instructor_id: 2, course_id: 6)
Cohort.create(name: 'Fall 2018', start_date: 'August 4, 2018', end_date: 'September 1, 2018',instructor_id: 3, course_id: 6)
Cohort.create(name: 'Fall 2018', start_date: 'September 1, 2018', end_date: 'September 1, 2018',instructor_id: 1, course_id: 7)

StudentCohort.create(student_id: 1, cohort_id: 1)
StudentCohort.create(student_id: 1, cohort_id: 3)
StudentCohort.create(student_id: 1, cohort_id: 13)
StudentCohort.create(student_id: 2, cohort_id: 3)
StudentCohort.create(student_id: 2, cohort_id: 4)
StudentCohort.create(student_id: 3, cohort_id: 2)
StudentCohort.create(student_id: 3, cohort_id: 6)
StudentCohort.create(student_id: 3, cohort_id: 13)
StudentCohort.create(student_id: 4, cohort_id: 11)
StudentCohort.create(student_id: 4, cohort_id: 7)
