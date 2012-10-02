# This script will count the number of lines in the files that 
puts "---------------------------------------------------------------------"
puts "@adi"
puts "This script will count the number of lines in files matching a particular regular expression and display the results"

puts "\n\n"
puts "What folder are the files in: "
dir_wd = gets.chomp
puts "What is the regular expression to use : "
regex = gets.chomp
Dir.chdir(dir_wd)
ls = Dir.glob(regex)
ls.each do |file|
	entiretext = File.open(file)
	line_count = 0
	entiretext.each do |line|
		line_count = line_count + 1
	end
	puts  file + "  		number of lines: " + line_count.to_s
end
