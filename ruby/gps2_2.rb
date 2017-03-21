# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Add items as keys to Grocery List hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#Add a new Key value pair to the the list hash
	#If quantity is specified, attach quantity as a value for the key
# output: updated list

# Method to remove an item from the list
# input: list, item name
# steps:
	#Search the hash for the item name
	#Delete the key associated with that name
# output: updated list

# Method to update the quantity of an item
# input: list , item name, new quantity
# steps: 
	#Search the hash for the item name
	#Assign the new quantity to the key
# output: updated list

# Method to print a list and make it look pretty
# input: list
# steps:
	#Print each key and value: **Key**: x**Value**
# output: **Key**: x**Value** for each item in the list



def create_list(items)
	grocery_list = {}
	key_array = items.split(' ')

	key_array.each do |item|
		grocery_list[item] = 1
	end
	print_list(grocery_list)
	grocery_list
end

def add_item(list,name,quantity=1)
	list[name]=quantity
	list
end

def remove_item(list,name)
	list.delete_if{|key| key == name}
end

def update_quantity(list,name,quantity)
	if list.has_key?(name)
		list[name] = quantity
	end
	list
end

def print_list(list)
	list.each do |keys, values|
		puts "#{keys}: x#{values}"
	end
end


groceries = create_list("carrots apples cereal pizza")
add_item(groceries,"bananas")
remove_item(groceries,"cereal")
update_quantity(groceries,"bananas",5)

print_list(groceries)

