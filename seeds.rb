require 'pry-byebug'
require_relative "models/Student"
require_relative "models/House"

student_1 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 15
  });
student_2 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 15
  });
student_3 = Student.new({
  "first_name" => "Cedric",
  "last_name" => "Diggery",
  "house" => "Hufflepuff",
  "age" => 17
  });
student_4 = Student.new({
  "first_name" => "Cho",
  "last_name" => "Chang",
  "house" => "Ravenclaw",
  "age" => 15
  });

house_1 = House.new({
  "house_name" => "Slytherin",
  "url" => "http://www.google.com"
  });
house_2 = House.new({
  "house_name" => "Gryffindor",
  "url" => "http://www.hotmail.com"
  });
house_3 = House.new({
  "house_name" => "Hufflepuff",
  "url" => "http://www.facebook.com"
  });
house_4 = House.new({
  "house_name" => "Ravenclaw",
  "url" => "http://www.facebook.com"
  });
student_1.save
student_2.save
student_3.save
student_4.save

house_1.save
house_2.save
house_3.save
house_4.save
binding.pry

nil