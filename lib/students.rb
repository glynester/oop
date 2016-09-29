require 'date'
require 'yaml'
require_relative 'student'

students = YAML.load_file('students.yml')
puts students; puts; puts
=begin
{"first_name"=>"Sandrine", "last_name"=>"Ortiz", "date_of_birth"=>"18/06/1987", "height"=>152}
{"first_name"=>"Kennith", "last_name"=>"Dibbert", "date_of_birth"=>"12/03/1972", "height"=>184}
etc.
=end
students.map! { |hash| Student.new(hash) }
puts students.inspect; puts; 
=begin
[#<Student:0x00000001a62240 @first_name="Sandrine", @last_name="Ortiz", @date_of_birth=#<Date: 1987-06-18 ((2446965j,0s,0n),+0s,2299161j)>, @height=152>, 
#<Student:0x00000001a61638 @first_name="Kennith", @last_name="Dibbert", @date_of_birth=#<Date: 1972-03-12 ((2441389j,0s,0n),+0s,2299161j)>, @height=184>, 
#<Student:0x00000001a61368 @first_name="Laverne", @last_name="Rowe", @date_of_birth=#<Date: 1992-01-09 ((2448631j,0s,0n),+0s,2299161j)>, @height=167>, 
#<Student:0x00000001a60d78 @first_name="Lloyd", @last_name="Marquardt", @date_of_birth=#<Date: 1959-11-17 ((2436890j,0s,0n),+0s,2299161j)>, @height=176>, 
#<Student:0x00000001a60b48 @first_name="Mariano", @last_name="Weber", @date_of_birth=#<Date: 1979-10-31 ((2444178j,0s,0n),+0s,2299161j)>, @height=160>]
=end

puts students; puts;    #puts uses the "to_s" method which is set to return #{full_name}, rating: #{rating}"
=begin
Sandrine Ortiz, rating: 12
Kennith Dibbert, rating: 9
Laverne Rowe, rating: 11
=end

#sort uses the spaceship operator which is set to compare ratings "rating <=> other.rating"
students.sort.each { |student| puts student }
