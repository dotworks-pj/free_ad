# frozen_string_literal: true

module Mypage
  class SpacesController < Mypage::BaseController
    before_action :set_place, only: %i[index new edit create update]
    before_action :set_space, only: %i[edit update]

    def index
      @spaces = @place.spaces
    end

    def new
      @space = Space.new
      @space.build_space_images
    end

    def edit; end

    def create
      @space = @place.spaces.build(space_params)

      if @space.save
        redirect_to mypage_place_spaces_path(@place, @space), notice: 'Space was successfully created.'
      else
        render :new
      end
    end

    def update
      if @space.update(space_params)
        redirect_to mypage_place_spaces_path(@place, @space), notice: 'Space was successfully updated.'
      else
        render :edit
      end
    end

    private

    def set_place
      @place = current_user.places.find(params[:place_id])
    end

    def set_space
      @space = @place.spaces.find(params[:id])
    end

    def space_params
      params.require(:space).permit(:name, :charge, :status, :description, space_images_attributes: %i[id image image_cache _destroy])
    end
  end
end
