require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
puts doc.css(".headline-26OIBN").text.strip

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")
courses.each do |course|
    puts course.text.strip
  end

  p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]
  