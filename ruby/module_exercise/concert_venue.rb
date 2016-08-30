require_relative 'bookable'

class ConcertVenue
	include Bookable

	def initialize
		@calendar = Calendar.new
	end

	def party_hard
		puts "Andrew W.K. is playing tonight"
	end

	# def book(person, time)					called by Module
	# 	@calendar.book(person, time)
	# end
end