require 'date'

class Student
  attr_reader :first_name, :last_name, :date_of_birth, :height

  def initialize(data)
    @first_name = data['first_name']
    @last_name = data['last_name']
    @date_of_birth = Date.parse(data['date_of_birth'])
    @height = data['height']
  end
end