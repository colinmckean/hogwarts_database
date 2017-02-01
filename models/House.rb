require_relative "../db/SqlRunner"

class House
  attr_reader :id, :house_name, :url
  def initialize(options)
    @id = options['id'].to_i
    @house_name = options['house_name']
    @url = options['url']

  end
  def save()
    sql = ("INSERT 
      INTO houses (house_name,url)
      VALUES ('#{@house_name}','#{@url}') 
      RETURNING id;")
    @id = SqlRunner.run(sql)
  end

  def self.all()
    sql = ("SELECT * 
      FROM houses;")
    SqlRunner.run(sql).map { |house| House.new(house)  }
  end

  def self.find_by_id(id)
   sql = ("SELECT * FROM houses
    WHERE id = #{id};")
   SqlRunner.run(sql).map { |house| House.new(house) }
  end
end