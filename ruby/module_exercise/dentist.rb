# require_relative 'bookable'
# require_relative 'billable'
require_relative 'health_professional'

class Dentist < HealthProfessional

	# def initialize
	# 	@calendar = Calendar.new
	# end

	# def bill(client_name)
	# 	puts "hey #{client_name}, you owe me money"
	# end

	def perform_root_canal
		puts "ouch"
	end
end