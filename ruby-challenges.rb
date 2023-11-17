# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], northeast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 
#input: a hash
#output: an array
#create a method that takes in a hash
# use valuses method to pull the key's values(arrays)
# use flatten to merge them all together into 1 array
# use .sort to sort them alphabetically

def united (hash)
    hash.values.flatten.sort
end
p united(us_states)

# p (us_states[:northwest]).concat(us_states[:southwest]).concat(us_states[:northeast]).sort
# def united2 (hash, key1, key2, key3)
#     (hash[key1]).concat(hash[key2]).concat(hash[key3]).sort
# end
# p united2(us_states,:northwest,:southwest,:northeast)

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Pseudo code: I'll do it, but it seems too obvious to pseudo code
# create a class Bike
# create a def intialize method with model as a parameter since the other two are just defaults
# create each instance variable
# close method with an end
# create a def method for bike_info
# create a string with string interpolation referencing the three instance variables.
# close the method with an end
# close the class with an end

class Bike
    def initialize(model)
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end
    # see below for psuedo
    def pedal_faster(number)
        @current_speed += number
        @current_speed
    end
    # see below for psuedo
    def brake(number)
        @current_speed -= number
        if @current_speed < 0
            @current_speed = 0
        end
        @current_speed
    end
end

trek = Bike.new('Trek')
p trek.bike_info

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

#Psuedo code
# create a def method taking in a number
# add that number to current speed
# close the method with an end
# create a def method taking in a number
# subtract a number from current speed
# create a conditional statment checking if current speed is less than 0
# if so, it will now equal 0 since you can't go negative speed
# close the conditional statement with an end
# close the method with an end

p trek.pedal_faster(10)
p trek.pedal_faster(18)
p trek.brake(5)
p trek.brake(25)

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0