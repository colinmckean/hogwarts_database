require_relative "../db/SqlRunner"

class Student
  attr_reader :first_name, :last_name, :age
  attr_accessor :house_id
  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end
  def save()
    sql = ("INSERT 
      INTO students (first_name,last_name, house_id, age)
      VALUES ('#{@first_name}','#{@last_name}',#{@house_id}, #{age}) 
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
  def find_house()
    sql = "SELECT s.first_name, h.house_name
    FROM students s
    INNER JOIN houses h
    on h.id = s.house_id;"
    SqlRunner.run(sql).first["house_name"]
    
  end
end