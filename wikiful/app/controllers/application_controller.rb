class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_categories #calls the action before any controller inherits from AppController

  private
  def get_categories
  	@categories = Category.all.order(:name)
  end
end
