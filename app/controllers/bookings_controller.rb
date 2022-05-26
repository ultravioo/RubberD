class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @duck = Duck.find(params[:duck_id])
    @booking.user = current_user
    @booking.duck = @duck
    @booking.save
    redirect_to ducks_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
