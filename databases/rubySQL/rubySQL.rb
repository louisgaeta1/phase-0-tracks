
require 'sqlite3'
require 'faker'

def create_user(db, first_name, last_name)
   db.execute("INSERT INTO users (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end

def create_business(db,name)
	db.execute("INSERT INTO businesses (name) VALUES (?)", [name])
end

def create_review(db)
	db.execute("INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (?,?,?,?)",
		[1+rand(5), Faker::Lorem.sentence, 1+rand(20), 1+rand(20)])
end

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


# 10.times do
#   create_user(db, Faker::Name.first_name, Faker::Name.last_name)
# end

# 20.times do 
# 	create_business(db, Faker::Company.name)
# end

# 5.times do 
# 	create_review(db)
# end

reviews = db.execute("SELECT businesses.name, reviews.stars, reviews.comment, users.first_name, users.last_name FROM reviews
	JOIN users ON reviews.user_id = users.id JOIN businesses ON reviews.business_id = businesses.id")
#p reviews;


reviews.each do |review|
	stars = ''
	review['stars'].times do
		stars+= '*'
	end 
	puts "#{review['name']} - #{stars}\n#{review['first_name']} #{review['last_name']} - #{review['comment']}\n\n"
end

