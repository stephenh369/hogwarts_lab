require('pry')
require_relative('./models/student')


student1 = Student.new({
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => 'Gryffindor',
    'age' => "12"
})
student1.save()







binding.pry
nil