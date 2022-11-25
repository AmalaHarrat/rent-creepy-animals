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
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    # @booking.update(status: params[:status]
    redirect_to animal_bookings_path(@booking.animal_id)
    render :new, status: :unprocessable_entity
  end

  def destroy
    @booking = Booking.find(params[:id])
    @animal = @booking.animal
    @booking.destroy
    redirect_to animal_bookings_path(@animal), status: :see_other
  end

  def my_bookings
    # index
    @mybookings = current_user.bookings
  end

  def booking_validation
    @booking = Booking.find(params[:id])
    @booking.update(status: params[:status].to_i)
    # redirect_to animal_bookings_path(@booking.animal_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :status)
  end
end
