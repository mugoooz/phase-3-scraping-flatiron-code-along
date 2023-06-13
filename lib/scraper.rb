require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    Nokogiri::HTML(open("https://moringa.instructure.com/"))
  end
  
  def get_courses
    doc = get_page
    doc.css(".course")
  end


  def make_courses
    course_offerings = get_courses
    course_offerings.each do |course|
    end
    
  end

end



