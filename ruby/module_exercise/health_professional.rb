require_relative 'bookable'
# require_relative 'billable'

class HealthProfessional
	include Bookable
	include Billable

	def initialize
		@calendar = Calendar.new
	end

	def bill(person)
		puts  "hey #{person}, you owe me money"
  end

end