class Portfolio < ApplicationRecord
	validates_presence_of :title, :subTitle, :body, :mainImage, :thumb_image
	def self.angular
    	where(subTitle: "Ruby on Rails development")
    end 
    after_initialize :set_defaults

    def set_defaults 
       self.mainImage ||= "http://placehold.it/600x400"
       self.thumb_image ||= "http://placehold.it/350x200" 
    end 
end

