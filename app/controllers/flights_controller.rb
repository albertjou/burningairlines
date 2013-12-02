class FlightsController < ApplicationController
  protect_from_forgery

  def search
    @flights = Flight.where(:origin => params[:origin], :destination => params[:destination])

    respond_to do |format|
      format.json { render json: @flights }
    end
  end

  def show
    @flight = Flight.find(params[:id])
    # seats = []
    # taken_seats = flight.reservations.map { |r| r.seat_number.to_i }
    # (1..flight.plane.seats).to_a.each do |x|
    #   seats[x] = x.in?(taken_seats)

    # @result = [flight, seats]

    respond_to do |format|
      format.json { render json: @flight, :methods => :seats }
    end

  end

  def seats

  end

end
