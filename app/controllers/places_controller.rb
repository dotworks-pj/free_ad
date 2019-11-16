class PlacesController < ApplicationController
  before_action :set_place, only: [:show]

  def show
    @main_space = @place.spaces.first
    @sub_spaces = @place.spaces.drop(1)
  end

  private
    def set_place
      @place = Place.find(params[:id])
    end
end
