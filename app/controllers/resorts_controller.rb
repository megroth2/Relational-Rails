class ResortsController < ApplicationController

  def index
    @resorts = Resort.all.sort_by(&:created_at).reverse
  end

  def show
    @resort = Resort.find(params[:id])
  end

  def lifts
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts
  end

end