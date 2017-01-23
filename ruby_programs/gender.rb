require 'httparty'

class GenderAPI
  def get_gender(first_name)
    response = HTTParty.get("https://gender-api.com/get?name=#{first_name}")
    return response.parsed_response#["gender"]
  end
end

#puts "Enter the name"
#first_name = GenderAPI.new

#puts GenderAPI.get_gender(gets.chomp)

