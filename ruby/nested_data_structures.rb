highway = {
	maxima: {
		people: ['Mike', 'Dom', 'Joe'],
		type: 'Sedan'
	},
	grand_cherokee: {
		people:['Ryan', 'Carlo', 'Oswald'],
		type: 'SUV'
	}
}

puts "How many cars on the highway"
puts highway.length

puts "Who's the second person in the Maxima?"
puts highway[:maxima][:people][1]

puts "Who's in the Grand Cherokee before and after the first person gets out and Lou gets in?"
p highway[:grand_cherokee][:people]
highway[:grand_cherokee][:people][0]= "Lou"
p highway[:grand_cherokee][:people]

puts "How many people are in the Maxima?"
puts highway[:maxima][:people].length

puts "Who's in the maxima after Craig gets in?"
highway[:maxima][:people].push("Craig")
p highway[:maxima][:people]