
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("welp.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  );
  CREATE TABLE IF NOT EXISTS businesses(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  );
  CREATE TABLE IF NOT EXISTS reviews(
  	id INTEGER PRIMARY KEY,
  	stars INTEGER,
  	comment VARCHAR(255),
  	business_id INTEGER,
  	user_id INTEGER,
  	FOREIGN KEY (user_id) REFERENCES users(id),
  	FOREIGN KEY (business_id) REFERENCES businesses(id)
  );
SQL


db.execute_batch(create_table_cmd)


# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)
# end


# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

