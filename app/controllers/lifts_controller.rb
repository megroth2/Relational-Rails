class LiftsController < ApplicationController

  def index
    @lifts = Lift.all
  end

  def show
    @lift = Lift.find(params[:id])
  end

end