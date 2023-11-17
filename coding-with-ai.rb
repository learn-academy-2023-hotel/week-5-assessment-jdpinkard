# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# Theory: 
# reduce iterates though taco votes
# Hash.new... a placeholder to store the results and number of votes
# do is a loop that keeps going so long as there are votes

# Psuedo (I might be wrong here, but I *think* I understand it.)
# input an array
# output a hash containing the result with the number of votes
# .reduce() iterates through each element of the array and accumilates a result
# Hash.new is the new hash reduce assigns the keys and tally with result(the accumilater)
# 'do' is just the start of the block method and 'end' is where it ends.
# result and votes are parameters, but result is the accumilator assigned by reduce(we can just rename it as a parameter)
# and votes is the elements pulled from the array
# result[vote.downcase] += 1 creates a new key for the vote type if there isn't one, and adds one to that key's value
# result a second time just stores the key in the hash
# this repeats since reduce iterates, and each time the key gets sent to the hash, the number raises
# so the variable totals holds the hash with all the accumilations of all the results and votes

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  result[vote.downcase] += 1 
  result
end

p totals