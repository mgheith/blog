require 'page-object'

class RegexPage
	include PageObject
	
	page_url "rubular.com"
	
	text_field(:input, :id => "regex")
	text_area(:textarea, :id => "test")
	
	def test_string
		self.input = "(.*)@(.*)\.(.*)"
		self.textarea = "jdenen@cscc.edu"
	end
end