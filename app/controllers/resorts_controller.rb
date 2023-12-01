class ResortsController < ApplicationController

  def index
    @resorts = Resort.all.sort_by(&:created_at).reverse
  end

  def show # how can I fix this so show is just line 12? I couldn't get the "as: :new_resort" line in the route to work properly
    if params[:id] == "new"
      @resort = Resort.new
      render "new"
    else
      @resort = Resort.find(params[:id])
    end
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