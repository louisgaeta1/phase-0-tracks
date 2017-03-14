def takes_a_block
  puts "Here is the before message"
  yield("parameter one", "parameter two")
  puts "Here is the after message"
end

takes_a_block{ |x, y| puts "Here is #{x} and here is #{y}"}

names = ['Sue', 'Bill', 'Joe', 'Susan']
actors_and_roles = {
  'Hugh Jackman' => 'Wolverine',
  'Tom Hanks' => 'Forrest Gump',
  'Bryan Cranston' => 'Walter White'
}

p "#{names} is the original array"
names.each{ |name| puts name.swapcase }
p "#{names} after each method"
names.map!{ |name| name.swapcase }
p "#{names} after map! method"

p "#{actors_and_roles} is the original hash"
actors_and_roles.each{ |actor, role| puts "#{actor.upcase} was great as #{role.upcase}" }
p "#{actors_and_roles} after each method"

numbers = [1, 2, 3, 4, 5]
num_to_letters = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four'
}

p numbers.delete_if{ |number| number > 3 }
p num_to_letters.delete_if{ |num, letter| num < 3}

numbers = [1, 2, 3, 4, 5]
num_to_letters = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four'

}

p numbers.keep_if{ |number| number > 2}
p num_to_letters.keep_if{ |num,letter| num < 2}

numbers = [1, 2, 3, 4, 5]
num_to_letters = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four'

}

p numbers.select!{ |number| number > 1}
p num_to_letters.select!{ |number, letter| number < 4}

numbers = [1, 2, 3, 4, 5]

p numbers.drop_while{ |number| number < 3}