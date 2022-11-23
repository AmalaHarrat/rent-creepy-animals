class BookingsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    raise
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to animal_bookings_path, status: :see_other
  end
end
