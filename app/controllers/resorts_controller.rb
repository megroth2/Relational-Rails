class ResortsController < ApplicationController

  def index
    @resorts = Resort.order("created_at desc") # should be a model method
  end

  def show
      @resort = Resort.find(params[:id])
  end

  def new
    @resort = Resort.new
  end

  def create
    @resort = Resort.new({
      name: params[:name],
      location: params[:location],
      peak_elevation: params[:"peak_elevation"],
      is_ikon_resort: params[:"is_ikon_resort"]
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
      peak_elevation: params[:"peak_elevation"],
      is_ikon_resort: params[:"is_ikon_resort"]
    })
    @resort.save
    redirect_to "/resorts/#{@resort.id}"
  end

end