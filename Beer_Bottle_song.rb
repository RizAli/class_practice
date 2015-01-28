# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
 
    attr_accessor :beers_qty, :oneToten

	def initialize(beers_qty)
		@beers_qty = beers_qty
		@beers_qty = 0 if beers_qty < 0
		@beers_qty = 99 if beers_qty > 99
        @oneToten = {}
        translate

        print_song(beers_qty)
        
	end

	def print_song(beers_qty)
		beers_qty.downto 1 do |i|
			puts oneToten[i]
		end
	end

    def translate
            
            oneToten[1] = "one"
            oneToten[2] = "two"
            oneToten[3] = "Three"
            oneToten[4] = "four"
            oneToten[5] = "five"
            oneToten[6] = "six"
            oneToten[7] = "seven"
            oneToten[8] = "eight"
            oneToten[9] = "nine"
            oneToten[10] = "ten"
            
            
    end




end

beers = BeerSong.new(10)
#puts beers.beers_qty

