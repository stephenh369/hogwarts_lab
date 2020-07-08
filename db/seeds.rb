require_relative('../models/student')

Student.delete_all()

student1 = Student.new({
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => 'Gryffindor',
    'age' => 18
})
student1.save()

student2 = Student.new({
    'first_name' => 'Ron',
    'last_name' => 'Weasley',
    'house' => 'Gryffindor',
    'age' => 17
})
