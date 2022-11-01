require 'active_record'

# connecting to database
ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/students.sqlite3",
)

# create student table
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
    )
    SQL

# create teacher table
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
    )
    SQL

# connecting table to database
ActiveRecord::Base.connection.execute(sql)

# creating student class
class Student < ActiveRecord::Base
end

# create teacher class
class Teacher < ActiveRecord::Base
end

# p Teacher.column_names
# Student.create(first_name: 'John', last_name: 'Doe', email: 'johndoe@gmail.com')
# Student.create(first_name:"Charles", last_name:"Wafula", email:"charleswafula@gmail.com")
# p Student.all
# p Student.find_by(first_name:"John")
student = Student.find(3)
# p student.first_name = 'Masinde'
# student.save
p student.first_name