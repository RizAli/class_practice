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
 
    attr_accessor :beers_qty

    def initialize(beers_qty)
        @beers_qty = beers_qty
        @beers_qty = 0 if beers_qty < 0
        @beers_qty = 99 if beers_qty > 99
        setup_dictionary
        print_song(beers_qty)
        
    end

    
    def print_song(beers_qty)
        beers_qty.downto 1 do |i|
            puts "#{to_words_fromhash(i)}"
        end
    end




    def to_words_fromhash(i)
        # setup_dictionary.each do |key, translation|
        #     puts setup"#{key}: #{translation}"
        # end
        
            if !setup_dictionary[i]
                return words_notinHash(i)
            else
                return setup_dictionary[i]

            end
        
        # beers_qty.downto 1 do |i|
        #     puts setup_dictionary
        # end


        # beers_qty.downto 1 do |i|
        #   puts units[i]
        # end
    end

    def words_notinHash(i)
        mode = i % 10
        setup_dictionary[i -mode] + " " + setup_dictionary[mode]
        #puts setup_dictionary[i - mode]

        
    end



    def setup_dictionary 
            
            numbers = {
            #units
            1 => "one",
            2 => "two",
            3 => "three",
            4 => "four",
            5 => "five",
            6 => "six",
            7 => "seven",
            8 => "eight",
            9 => "nine",
            # teens
            11=> "eleven",
            12=> "twelve",
            13=> "thirteen",
            14=> "fourteen",
            15=> "fifteen",
            16=> "sixteen",
            17=> "seventeen",
            18=> "eighteen",
            19=> "nineteen",
            # tens
            10=> "ten",
            20=> "twenty",
            30=> "thirty",
            40=> "forty",
            50=> "fifty",
            60=> "sixty",
            70=> "seventy",
            80=> "eighty",
            90=> "ninety"
            }
    

            # UNITS.each do |beers_qty , translate|
            # puts "#{beers_qty}: #{translate}"
            # end    
    end




end

beers = BeerSong.new(40)
#puts beers.beers_qty


