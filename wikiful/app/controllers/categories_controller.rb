class ArticlesController < ApplicationController
	def index
		@categories = Category.order('name').limit(25)
	end

	def show
		@categories = Category.find(params[:id])
	end
end