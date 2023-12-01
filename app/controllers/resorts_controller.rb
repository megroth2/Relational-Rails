class ResortsController < ApplicationController

  def index
    @resorts = Resort.all
  end

  def show
    @resort = Resort.find(params[:id])
  end

  def lifts
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts
  end

end