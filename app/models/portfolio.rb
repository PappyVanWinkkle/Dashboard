class Portfolio < ApplicationRecord
	validates_presence_of :title, :subTitle, :body, :mainImage, :thumb_image
end
