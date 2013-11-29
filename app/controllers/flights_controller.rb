class FlightsController < ApplicationController
  protect_from_forgery

  def index
  end

  def show
    @flight = Flight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flight, include: [:reservations] }
    end

  end

end
