class ResortsController < ApplicationController

  def index
    @resorts = Resort.order("created_at desc")
  end

  def show
      @resort = Resort.find(params[:id])
  end

  def lifts
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts
  end

  def new
    @resort = Resort.new
  end

  def create
    @resort = Resort.new({
      name: params[:name],
      location: params[:location],
      peak_elevation: params[:"Peak Elevation"],
      is_ikon_resort: params[:"Is Ikon Resort"]
    })
    @resort.save
    redirect_to "/resorts"
  end

  def edit
    @resort = Resort.find(params[:id])
  end

  def update
    @resort = Resort.find(params[:id])
    @resort.update({
      name: params[:name],
      location: params[:location],
      peak_elevation: params[:"Peak Elevation"],
      is_ikon_resort: params[:"Is Ikon Resort"]
    })
    @resort.save
    redirect_to "/resorts/#{@resort.id}"
  end

end