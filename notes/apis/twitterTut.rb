require 'rubygems'
require 'oauth'
require 'json'

# Parse a response from the API and return a user object.
# The response from the verify_credentials.json endpoint contains a
# JSON-encoded representation of the authenticating user for successful
# requests. Now you will parse the API response and print out the current
# user's screen name.

def parse_user_response(response)
  user = nil

  # Check for a successful request
  if response.code == '200'
    # Parse the response body, which is in JSON format.
    # ADD CODE TO PARSE THE RESPONSE BODY HERE
    user = JSON.parse(response.body)
    puts "Hello, #{user["screen_name"]}!"

    # Pretty-print the user object to see what data is available.
  else
    # There was an error issuing the request.
    puts "Expected a response of 200 but got #{response.code} instead"
  end

  user
end

# Change the following values to those provided on dev.twitter.com
# The consumer key identifies the application making the request.
# The access token identifies the user making the request.
consumer_key = OAuth::Consumer.new(
    "2MY59hYZXiqWsTN97FRAkA",
    "1F5Qkubips9TObadjwTf2u1zMEXE9zXFfPKzB6CD4")
access_token = OAuth::Token.new(
    "1277968580-LgqFYpJVtSOjEGRCh6ByNyInekWk6yvRyCjgDcr",
    "2zH3Q1d30eLzvqs8bBsX7ibto4qmMzIo1QP1FNtSRQ")

# All requests will be sent to this server.
baseurl = "https://api.twitter.com"

# The verify credentials endpoint returns a 200 status if
# the request is signed correctly.
address = URI("#{baseurl}/1.1/account/verify_credentials.json")

# Set up Net::HTTP to use SSL, which is required by Twitter.
http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# Build the request and authorize it with OAuth.
request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

# Issue the request and return the response.
http.start
response = http.request request
puts "The response status was #{response.code}"

# Parsing a User Object
