re "net/http"
require "uri"

uri = URI.parse("http://www.google.com")
http = Net::HTTP.new(uri.host, uri.port)
