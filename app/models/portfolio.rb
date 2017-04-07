class Portfolio < ApplicationRecord
	validates_presence_of :title, :subTitle, :body, :mainImage, :thumb_image
	def self.angular
    	where(subTitle: "Ruby on Rails development")
    end 
end
