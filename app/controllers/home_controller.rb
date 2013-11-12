#encoding : utf-8
class HomeController < ApplicationController
  def index
  	@projects = Project.all
  	render layout: "home"
  end

  def about
  end
end
