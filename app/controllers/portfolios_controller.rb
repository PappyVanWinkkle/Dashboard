class PortfoliosController < ApplicationController
	# Index action
	def index 
		@portfolio = Portfolio.all
	end 
    # New action 
	def new 
		@portfolio = Portfolio.new 
		5.times {@portfolio.technologies.build}
	end 
    # Create action 
	def create 
		@portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :subTitle, :body, technologies_attributes:[:name]))
		respond_to do |format|
		if @portfolio.save
		   format.html { redirect_to portfolios_path, notice: "Your Created a portfolio"}
		else 
		   format.html { render :new}  
		end	
	end 
   end 

  def edit 
  	  @portfolio = Portfolio.find(params[:id])
  end 

  def update 
  	  @portfolio = Portfolio.find(params[:id])
  	  respond_to do |format|
  	  if @portfolio.update(params.require(:portfolio).permit(:title, :subTitle, :body))
  	     format.html { redirect_to portfolios_path, notice: "Just updated the portfolio"}	
  	  else 
  	     format.html {render :edit}  
  	  end  
  end 
end 

def show 
	@portfolio = Portfolio.find(params[:id])
end  



def destroy 
	@portfolio = Portfolio.find(params[:id])
	@portfolio.destroy
	respond_to do |format|
	format.html { redirect_to portfolios_url, notice: "Just deleted your portfolio"}
	end 
end	



end    