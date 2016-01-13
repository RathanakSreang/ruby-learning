require 'net/http'
#Net::HTTP.get_print('www.rubyinside.com', '/')
url = URI.parse('http://www.rubyinside.com/')
puts url
puts url.host
puts url.port
response = Net::HTTP.start(url.host, url.port) do |http|
  http.get(url.path)
end
content = response.body
puts content
#example
