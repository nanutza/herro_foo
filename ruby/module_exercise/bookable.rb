module Bookable

	def initialize
		@calendar = Calendar.new
	end

	def book_appointment(person,time)
		@calendar.book(person,time)
	end
	
end