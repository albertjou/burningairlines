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
    @seats =

    respond_to do |format|
      format.json { render json: @flight, include: {:reservations => {:only => :seat_number} } }
    end

  end

end
