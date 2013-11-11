#encoding : utf-8
class HomeController < ApplicationController
  def index
  	render layout: "home"
  end

  def about
  	render layout: "home"
  end
end
