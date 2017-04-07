class Portfolio < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :subTitle, :body, :mainImage, :thumb_image
	def self.angular
    	where(subTitle: "Ruby on Rails development")
    end 
    after_initialize :set_defaults

    def set_defaults 
       self.mainImage ||= Placeholder.image_generator(height: '600', width: '400')
       self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    end 
end

