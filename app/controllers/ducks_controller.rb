class DucksController < ApplicationController
  def index
    @ducks = Duck.all
  end

  def show
    @ducks = Duck.find(params[:id])
  end

end
