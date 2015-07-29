require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'open-uri'

internet = Mechanize.new
page = internet.get "http://www.flipkart.com/search?q=mobile"
puts page
#link = Array.new
#i=0
#page.search(".fk-display-block").each do |link|
#   link = page.link_with search: '.fk-display-block'
#  i+=1
#  puts link
#  if i>10
#    break
#  end
#end

#link = page.link_with(search: '.fk-display-block', text: '                   Lenovo A6000 Plus (Black, 16 GB)')
#i=0
#page.links.each do |link|
  #puts "/#{link.text}/"
 # i+=1
  #if i>100
 #   break
  #end
#end

link = page.link_with(text: '
                   Redmi 2 (White, 8 GB) 
               ')
puts link

html = link.click
#puts doc
doc = Nokogiri::HTML(html.body)
title = doc.at_css("#tab-0 .omniture-field").text
puts title