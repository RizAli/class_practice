=begin 
everything in the world is an object such as mouse, computer, dog, car etc.

everything is an object and every object has attributes.

in order to make in object it must belong to a class.
lets say if we want to create a dog object
so we will first create a class

step 1:
-------
class name starts with capital letter

class Animal

step 2:
-------- 
lets add some attributes to the class
for the above class Animal we have set three attributes 


attr:accessor :name, :age, :trait

step 3:
--------
simply now end creating class by entering the word "end" 

end

step 4:
-------
now lets create an object from the class
lets create an animal object

let define a variable which will stor new object for the class Animal

first_animal = Animal.new

step 5:
---------
lets add name, age and trait - these are the attributes for the class Animal

first_animal.name = "Jim"
first_animal.age = 30
first_animal.trait = "fluffy"

step 6:
--------
lets check if ruby can remember the class animal

puts first_animal.age => 30
puts first_animal.name => Jim
puts first_animal.trait => "fluffy"


attempted on irb
Rizwans-MacBook-Pro:class_practice rizcube$ irb

irb(main):001:0> class Animal
irb(main):002:1> attr_accessor :name, :age, :trait
irb(main):003:1> end
=> nil
irb(main):004:0> first_animal = Animal.new
=> #<Animal:0x007fcfab139b88>
irb(main):005:0> first_animal.name = "Jim"
=> "Jim"
irb(main):006:0> first_animal.age = 30
=> 30
irb(main):007:0> first_animal.trait = "fluffy"
=> "fluffy"
irb(main):008:0> puts first_animal.name
Jim
=> nil
irb(main):009:0> puts first_animal.age
30
=> nil
irb(main):010:0> puts first_animal.trait
fluffy
=> nil
irb(main):011:0> 






