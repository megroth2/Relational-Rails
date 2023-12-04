class ResortLiftsController < ApplicationController

  def index
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts
  end

end