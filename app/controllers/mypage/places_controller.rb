# frozen_string_literal: true

module Mypage
  class PlacesController < Mypage::BaseController
    before_action :set_place, only: %i[show edit update confirm publish]

    def index
      @places = current_user.places
    end

    def show
      @places = current_user.places
      @main_space = @place.spaces.first
      @sub_spaces = @place.spaces.drop(1)
    end

    def new
      @place = Place.new
    end

    def edit
      @place.spaces.each(&:build_space_images)
    end

    def create
      @place = current_user.places.build(place_params)
      if @place.save
        redirect_to mypage_place_spaces_path(@place), notice: 'プレイスを保存しました'
      else
        render :new
      end
    end

    def update
      if @place.update(place_params)
        redirect_to mypage_place_spaces_path(@place), notice: 'プレイスを保存しました'
      else
        render :edit
      end
    end

    def confirm
      @main_space = @place.spaces.first
      @sub_spaces = @place.spaces.drop(1)
    end

    def publish
      if @place.publish
        redirect_to mypage_place_path(@place), notice: 'プレイスを投稿しました'
      else
        render 'confirm'
      end
    end

    private

    def set_place
      @place = current_user.places.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:title, :description, :name, :address, :station, :url, :main_image, :main_image_cache, spaces_attributes: [:id, :place_id, :name, :description, :charge, :_destroy, space_images_attributes: %i[id image image_cache _destroy]])
    end
  end
end
