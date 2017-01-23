=begin
Create a program that generates a secure password. Prompt the user for the minimum length the number of special characters, and the number of numbers. Then generate a password for the user using those inputs. Provide multiple options for the user to choose.
=end

class PasswordGenerator

	attr_accessor :password
	def initialize(password)
		@password = password
	end

	def check_for_conditions_to_create_password
		if @password.length < 8
			#puts "length fail"
			return false
		elsif !(/[!..?@]/.match(@password))
			#puts "special character fail"
			return false
		elsif !(/[0-9]/.match(@password))
			#puts "number fails"
			return false
		elsif !(/[A-Za-z]/.match(@password))
			#puts "alphabet fail"
			return false
		else
			return true
		end
	end

end

=begin
char = "y"
while char == "y"
	puts "Enter a password"
	puts "Password should contain  1 or more special characters, number and letters"
	input_password = PasswordGenerator.new(gets.chomp)
	value = input_password.check_for_conditions_to_create_password
	if value
		puts "Your password created successfylly"
		puts "Do you want to create the password again? (y/n)"
		char = gets.chomp
	else
		puts "Password not created. Please try again"
	end
end
=end
