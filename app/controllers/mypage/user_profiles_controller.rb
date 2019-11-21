# frozen_string_literal: true

module Mypage
  class UserProfilesController < Mypage::BaseController
    before_action :set_user_profile, only: %i[edit update]

    def new
      @user_profile = UserProfile.new
    end

    def edit; end

    def create
      @user_profile = current_user.build_profile(user_profile_params)

      if @user_profile.save
        redirect_to mypage_root_path, notice: '自社プロフィールを登録しました'
      else
        render :new
      end
    end

    def update
      if @user_profile.update(user_profile_params)
        redirect_to mypage_root_path, notice: '自社プロフィールを更新しました'
      else
        render :edit
      end
    end

    private

    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    def user_profile_params
      params.require(:user_profile).permit(:organization, :representative, :post_code, :description, :address, :phone)
    end
  end
end
