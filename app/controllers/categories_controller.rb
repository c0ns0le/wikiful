class CategoriesController < ApplicationController
	def index
		@categories = Category.order('name').limit(25)
	end

	def show
		@category = Category.find(params[:id])
	end

	private
	def category_params
		params.require(:category).permit(:name, :category_ids => [])
	end
end