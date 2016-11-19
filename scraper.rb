require "nokogiri"

file = File.open("steve-jobs.html")

html = Nokogiri::HTML(file)

output = File.new("steve-jobs-story.txt", "w+")

name = html.at_css("#firstHeading").text
bday = html.at_css('.bday').text
dday = html.at_css('.dday').text

output.write(name + " was born on " + bday + "\n")
output.write("He died on " + dday)
