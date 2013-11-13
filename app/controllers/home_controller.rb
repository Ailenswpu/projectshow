#encoding : utf-8
class HomeController < ApplicationController
  def index
  	@projects = Project.all
  end

  def about
  	
  end

  def about_scs
  	
  end
end
