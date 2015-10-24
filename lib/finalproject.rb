require 'page-object'


class Cscc
	include PageObject
	
	page_url "http://www.cscc.edu/"
	text_field(:search_bar, :id => "input")
	button(:search, :id => "submit")
	
	def enter_search
		self.search_bar = "csci 2994"
		self.search
	end
end

class Results
	include PageObject
	
	button(:link, :href => "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T=")
	
	def click
		self.link
	end
end

class CourseInfo

	include PageObject
	
	paragraph(:prerequisites, :xpath => "//div[@id='course-info']/p[5]")
	button(:textbooks?, :href => "http://bookstore.cscc.edu")
end