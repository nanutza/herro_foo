# Write a program that asks for a starting year and an ending year and the puts all the leap_years between them (and including them)

class Leap_year

	def initialize(start_year,end_year)
		@start_year = start_year
		@end_year = end_year
		@leap_years = []
	end

	def test_leap
		if @start_year % 4 == 0
			@start_year

		elsif @start_year % 4 == 1
			@start_year + 3

		elsif @start_year % 4 == 2
			@start_year + 2
		else
			@start_year = 1
		end
	end

	def create_leap_array

		leap_year = test_leap
		while @end_year >= @start_year && @end_year >= leap_year

			@leap_years << leap_year
			leap_year += 4
		end
	end

	def print_leap_array
		create_leap_array
		puts "\nThere are #{@leap_years.length} leap years between, and including, #{@start_year} and #{@end_year}."
		puts " They are #{@leap_years}"
	end

end

leap_year = Leap_year.new(1992, 2013)
leap_year.print_leap_array

leap_year = Leap_year.new(1880, 1993)
leap_year.print_leap_array

leap_year = Leap_year.new(1920, 1920)
leap_year.print_leap_array

leap_year = Leap_year.new(1921, 1921)
leap_year.print_leap_array


