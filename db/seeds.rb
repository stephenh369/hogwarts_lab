require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

house1 = House.new({
    'name' => 'Gryffindor'
})
house1.save()

house2 = House.new({
    'name' => 'Slytherin'
})
house2.save()

house3 = House.new({
    'name' => 'Hufflepuff'
})
house3.save()

house4 = House.new({
    'name' => 'Ravenclaw'
})
house4.save()

student1 = Student.new({
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => house1.id,
    'age' => 18
})
student1.save()

student2 = Student.new({
    'first_name' => 'Ron',
    'last_name' => 'Weasley',
    'house' => house1.id,
    'age' => 17
})
student2.save()
