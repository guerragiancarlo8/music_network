class ConcertsController < ApplicationController
	def index

		@concerts = Concert.all

	end

	def show
		@concert = Concert.find(params[:id])
	end

	def new
	end

	def create 
		Concert.create(desired_params)
		redirect_to '/'
	end

	private

	def desired_params
		params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
	end
end
