# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Student.create(student_id: 100000, name: 'Brendin', email: 'brendin@sfu.ca')
  Student.create(student_id: 100001, name: 'Angeline', email: 'angeline@sfu.ca')
  Student.create(student_id: 100002, name: 'John', email: 'john@sfu.ca')
  Student.create(student_id: 100003, name: 'Kai', email: 'kai@sfu.ca')
  Student.create(student_id: 100004, name: 'Dat', email: 'dat@sfu.ca')
  Student.create(student_id: 100005, name: 'Kyle', email: 'kyle@sfu.ca')
  Student.create(student_id: 100006, name: 'Jason', email: 'jason@sfu.ca')

  Course.create(course_id: 'CMPT276', description: 'Software Engineering')
  Course.create(course_id: 'CMPT307', description: 'Data Structure')
  Course.create(course_id: 'CMPT354', description: 'Database I')
  Course.create(course_id: 'CMPT295', description: 'Computer Architecture')
  Course.create(course_id: 'CMPT300', description: 'Operating System')

  Enroll.create(student_id: 100000, course_id: 'CMPT300', percentage: 90)
  Enroll.create(student_id: 100001, course_id: 'CMPT300', percentage: 95)
  Enroll.create(student_id: 100002, course_id: 'CMPT300', percentage: 70)
  Enroll.create(student_id: 100003, course_id: 'CMPT300', percentage: 55)
  Enroll.create(student_id: 100004, course_id: 'CMPT300', percentage: 99)
  Enroll.create(student_id: 100005, course_id: 'CMPT300', percentage: 70)


  Enroll.create(student_id: 100001, course_id: 'CMPT276', percentage: 95)
  Enroll.create(student_id: 100002, course_id: 'CMPT276', percentage: 70)
  Enroll.create(student_id: 100003, course_id: 'CMPT276', percentage: 55)
  Enroll.create(student_id: 100004, course_id: 'CMPT276', percentage: 99)

  Enroll.create(student_id: 100001, course_id: 'CMPT295', percentage: 95)
  Enroll.create(student_id: 100002, course_id: 'CMPT295', percentage: 70)
  Enroll.create(student_id: 100003, course_id: 'CMPT295', percentage: 55)
  Enroll.create(student_id: 100004, course_id: 'CMPT295', percentage: 99)
  Enroll.create(student_id: 100005, course_id: 'CMPT295', percentage: 70)
