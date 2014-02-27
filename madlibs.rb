require 'madlibs_constant.rb'

	puts "Please enter a gem-stone"
	gems = gets.chomp

	puts "Please enter a gem-stone"
	gemstone = gets.chomp

	unchanged_key = M_Constants::PHARSE_CONSTANT[M_Constants::FIRST_NOTATION_CONSTANT]
	the_key = unchanged_key[M_Constants::PROCEEDS_COLON_CONSTANT][2..-2]
	my_hash = {:the_key => gems}
	temp_string = M_Constants::PHARSE_CONSTANT.gsub(M_Constants::FIRST_NOTATION_CONSTANT, my_hash[:the_key])
	temporal_regex = "((" << "#{the_key}"<< "))"
	temporal_regex = Regexp.escape(temporal_regex)
	regular_expression = Regexp.new(temporal_regex)
	temp_string.gsub!(regular_expression, my_hash[:the_key])
	temp_string.gsub!(M_Constants::SECOND_NOTATION_CONSTANT, gemstone)
	puts temp_string

