require_relative "../db/SqlRunner"

class Student
  attr_reader :first_name, :last_name, :house, :age
  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house_name'].to_i
    @age = options['age'].to_i
  end
  def save()
    sql = ("INSERT 
      INTO students (first_name,last_name, house, age)
      VALUES ('#{@first_name}','#{@last_name}',#{@house}, #{age}) 
      RETURNING id;")
    @id = SqlRunner.run(sql)
  end

  def self.all()
    sql = ("SELECT * 
      FROM students;")
    SqlRunner.run(sql).map { |student| Student.new(student)  }
  end

  def self.find_by_id(id)
   sql = ("SELECT * FROM students
    WHERE id = #{id};")
   SqlRunner.run(sql).map { |student| Student.new(student) }
  end
end