class BottlesController < ApplicationController
	before_action :find_bottle, only:[:show, :update, :destroy, :edit]

	def index
		@bottles = Bottle.all
	end

	def show
	
	end

	def new
		@bottle = Bottle.new
	end

	def create

   		@bottle = Bottle.new(bottle_params)
   		if @bottle.save
      		redirect_to @bottle
   		else
      		render 'new'
   		end
   
	end

	def edit
	
	end

	def update
		
		@bottle.update(bottle_params)
   		redirect_to @bottle
   		

	end

	def destroy
	
		@bottle.destroy
		redirect_to bottles_path

	end

	private
	def bottle_params
   		params.require(:bottle).permit(:title, :box, :vote, :avatar)
	end

	def find_bottle
		@bottle = Bottle.find(params[:id])
	end


	
end
