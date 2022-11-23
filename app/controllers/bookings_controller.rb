class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)

    @booking.animal = @animal
    @booking.user = current_user

    if @booking.save
      redirect_to animal_bookings_path(@animal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @animal = Animal.find(params[:animal_id])
  end

  def update
    @booking = Booking.find(params[:animal_id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
