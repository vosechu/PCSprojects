require 'rubygems'
require 'oauth'
require 'json'

class FollowCost

  def initialize
    # connect to twitter
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
    @http = Net::HTTP.new address.host, address.port
    @http.use_ssl = true
    @http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # Build the request and authorize it with OAuth.
    request = Net::HTTP::Get.new address.request_uri
    request.oauth! @http, consumer_key, access_token

    # Issue the request and return the response.
    @http.start
    @response = @http.request request
    "The response status was #{@response.code}"
  end

  # * Take a username and calculate their milliscoble rating
  def rating(username)
  end
  # * Take a username and find the milliscoble rating of all their friends
  # * Sort those users with the highest number of milliscobles and output it to the terminal
  # * Run via the terminal

  # To create a command-line interface you should use Thor or Rake.
  # Thor docs can be found here: [Thor](http://whatisthor.com/)

  # To create network connections use ruby's built-in 'net/http': [net/http docs]
  # (http://ruby-doc.org/stdlib-2.0/libdoc/net/http/rdoc/Net/HTTP.html),
  # [cheat sheet](http://www.rubyinside.com/nethttp-cheat-sheet-2940.html)

  # Twitter's search api can be found here: [search api]
  # (https://dev.twitter.com/docs/api/1/get/search).
  # That should do most of the work but there may be other api endpoints that you need.
end