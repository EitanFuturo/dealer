class HomeController < ApplicationController

  def index
    @drugs = Drug.all
    render json: @drugs
  end

end
