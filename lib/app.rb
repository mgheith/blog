require 'sinatra'
require 'slim'

get '/create' do
 slim <<-VIEW
doctype html
html
	head
		title My Blog - Create
	body
		form action='/create/post' method='POST'
			input type='text' id='post-title' name='title'
			textarea id='post-body' name='content'
			button id='submit-post' Submit
VIEW
end
post '/create/post' do
"Happy"
end
get '/' do
"Valid Post 1"

end