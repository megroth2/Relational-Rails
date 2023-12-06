class ResortLiftsController < ApplicationController

  def index
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts
  end

  def new
    @lift = Lift.new
  end

  def create
    @resort = Resort.find(params[:resort_id])
    @lift = Lift.new({
      name: params[:name],
      seats: params[:seats],
      is_gondola: params[:is_gondola],
      resort_id: @resort.id
    })
    @lift.save
    redirect_to "/resorts/#{@resort.id}/lifts"
  end

end