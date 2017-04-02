class PortfoliosController < ApplicationController
	# Index action
	def index 
		@portfolio = Portfolio.all 
	end 
end
