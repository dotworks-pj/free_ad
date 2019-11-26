# frozen_string_literal: true

module Mypage
  class PlaceOwnerProfilesController < Mypage::BaseController
    before_action :set_place, only: %i[edit create update]
    before_action :set_place_owner_profile, only: %i[edit update]

    def new
      @place_owner_profile = PlaceOwnerProfile.new
    end

    def edit; end

    def create
      @place_owner_profile = @place.build_owner_profile(place_owner_profile_params)
      if @place_owner_profile.save
        redirect_to confirm_mypage_place_path(@place), notice: '会社プロフィールを登録しました'
      else
        render :new
      end
    end

    def update
      if @place_owner_profile.update(place_owner_profile_params)
        redirect_to confirm_mypage_place_path(@place), notice: '会社プロフィールを更新しました'
      else
        render :edit
      end
    end

    private

    def set_place
      @place = current_user.places.find(params[:place_id])
    end

    def set_place_owner_profile
      @place_owner_profile = @place.owner_profile
    end

    def place_owner_profile_params
      params.require(:place_owner_profile).permit(:organization, :representative, :post_code, :description, :address, :phone)
    end
  end
end
