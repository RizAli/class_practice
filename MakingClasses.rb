=begin

class User
	
	puts self.inspect 

	def favorite_thing
		puts "Ruby!!"
	end

	def whoami
		self
	end


end

richard = User.new
puts richard.favorite_thing

puts richard.whoami == richard
=end

# Writing class methods
# ======================
# when defining class methods we use self, this will not work
# on user instance method.
# either use def self.favorite_thing or class << self


class User
	def self.favorite_thing
		puts "Ruby!!!"
	end
	
end

puts User.favorite_thing

richard= User.new
richard.favorite_thing

