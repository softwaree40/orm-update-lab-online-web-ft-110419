require_relative "../config/environment.rb"

class Student
   attr_accessor :name,:grade,:id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
   def initialize(name,grade,id =nil)
       @name = name 
       @grade = grade 
       @id = id
   end
   def self.create_table
            sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS student (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
        )
        SQL
    DB[:conn].execute(sql).map do ||
     
    end

end
