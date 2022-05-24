class DucksController < ApplicationController
  def index
    @ducks = policy_scope(Duck)
  end

  def show
    @duck = Duck.find(params[:id])
    authorize @duck
  end

  def new
    @duck = Duck.new
    authorize @duck
  end

  def create
    @duck = Duck.new(duck_params)
    @duck.user = current_user
    authorize @duck
    if @duck.save
      redirect_to duck_path(@duck)
    else
      render :new
    end
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :price, :location, :description)
  end
end
