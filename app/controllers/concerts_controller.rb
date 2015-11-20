class ConcertsController < ApplicationController
	def popular
		@concerts = Concert.joins(:comments).group(Comment.arel_table[:concert_id]).order(Comment.arel_table[:concert_id].count)

	end

	def sort
		render 'sort'
	end

	def sorted

		@concerts = Concert.where("price < ? AND date > ?",params["max-price-willing"], DateTime.now)


	end

	def add_comment

		a = Comment.create(concert_id: params["id"],body: params["comment_body"])
		redirect_to '/'

	end
	def index

		@concerts_today = Concert.where("strftime('%d', date) = ? AND strftime('%m',date) = ?", DateTime.now.day.to_s, DateTime.now.month.to_s)
		@concerts_next_month = Concert.where("strftime('%d',date) > ? AND strftime('%m',date) = ?", DateTime.now.day.to_s,DateTime.now.month.to_s)


	end

	def show
		@concert = Concert.find(params[:id])
	end

	def new
	end

	def create 
		a = Concert.create(desired_params)
		redirect_to '/'
	end

	private

	def desired_params
		params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
	end

	def desired_params_2
		params.require(:comment).permit(:body)
	end
end
