class DucksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @ducks = policy_scope(Duck)
  end

  def show
    @duck = Duck.find(params[:id])
    authorize @duck
    @markers = @duck.geocode.map do
      {
        lat: @duck.latitude,
        lng: @duck.longitude,
        info_window: render_to_string(partial: "info_window", locals: { duck: @duck }),
        image_url: helpers.asset_url("https://res.cloudinary.com/rubberd/image/upload/v1653397902/RubberDs/logo-duck-1-no-background_zf9e9q.png")
      }
    end
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
    params.require(:duck).permit(:name, :price, :location, :description, :photo)
  end
end
