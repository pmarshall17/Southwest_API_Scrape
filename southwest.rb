require 'curb'
require 'nokogiri'
require 'mechanize'

http = Curl.get ("https://www.southwest.com/flight/select-flight.html?displayOnly=&int=HOMEQBOMAIR") do |http|
	http.headers['User-Agent'] = 'Mozilla/5.0(Macintosh; Intel Mac OS X 10_10_2)AppleWebKit/537.36(KHTML, like Gecko) Chrome/51.0.2704.84/537.36'
end

html = Nokogiri::HTML(http.body_str)
html.css(".sw_content").each do |node|
	puts node.inner_html, "\n\n" 
end