class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  attr_accessor :name, :grade
  
  attr_reader :id
  
  def initialize(name, grade, id = nil)
    @name = name 
    @grade = grade 
    
    @id = id
    
  end
  
  def save 
    
  end
  
  def self.create_table
    sql = <<-SQL 
    CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)
    SQL
    
    DB[:conn].execute(sql)
    
  end
  
  def self.drop
    
  end
  
  def save
    sql = <<-SQL
      INSERT INTO students (id, name, grade) 
      VALUES (?, ?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.album)
  end
  
end
