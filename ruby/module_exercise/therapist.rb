# require_relative 'bookable'
# require_relative 'billable'
require_relative 'health_professional'

class Therapist < HealthProfessional

	# def initialize
	# 	@calendar = Calendar.new
	# end

	# def bill(client_name)
	# 	puts "hey #{client_name}, you owe me money"
	# end

	def listen
		puts "tell me more"
	end
end