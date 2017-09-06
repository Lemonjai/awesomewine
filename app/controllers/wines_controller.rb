class WinesController < ApplicationController

	before_action :find_wine, only: [:show, :edit, :update, :destroy]

	def index
		@wines = Wine.all.order("created_at DESC")
	end

	def show
	end

	def new
		@wine = Wine.new
	end

	def create
		@wine = Wine.new(wines_params)
		if @wine.save
			redirect_to @wine
		else
			render "New"
		end
	end

	def edit
	end

	def update
		if @wine.update(wines_params)
			redirect_to @wine
		else
			render "Edit"
		end
	end

	def destroy
		@wine.destroy
		redirect_to root_path
	end

	private 
		def wines_params
			params.require(:wine).permit(:name, :manufacture, :city, :year, :country, :summary, :description)
		end

		def find_wine
			@wine = Wine.find(params[:id])
		end

end
