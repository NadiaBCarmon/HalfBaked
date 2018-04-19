require 'sinatra'
require 'sendgrid-ruby'
require_relative 'desserts'

include SendGrid

#---#

#GET Index
get '/' do
	erb :index
end

#GET /:desserttype
get '/:desserttype' do 

	if params[:desserttype] == "cookies"
	#Cookies#
			@cookie = $cookie
			puts @cookie
			erb :cookies

	elsif params[:desserttype] == "muffins"
			@muffin = $muffin
			puts @muffin
			erb :muffins

	elsif params[:desserttype] == "cakes"
			@cake = $cake
			puts @cake
			erb :cakes
	end

end 

#POST /sent page
post '/sent' do
	erb :sent

##Instance var for "Sent To" email##
@toemail = params[:email]

from = Email.new(email: 'contactus@halfbaked.com')
# from = Email.new(email: 'nadiabcarmon@gmail.com')

#Instance var for sent email
to = Email.new(email: @toemail)

subject = "If you received this"
content = Content.new(type: 'text/plain', value: '@oatmeal @pb @biscotti')
mail = Mail.new(from, subject, to, content)

# sendgrid_api_key = ENV[‘SENDGRID_API_KEY’]

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
# puts response.parsed_body
# puts response.headers

end