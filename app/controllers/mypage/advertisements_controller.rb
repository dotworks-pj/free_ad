# frozen_string_literal: true

module Mypage
  class AdvertisementsController < Mypage::BaseController
    before_action :set_advertisement, only: %i[show edit update]

    def index
      @advertisements = current_user.advertisements
    end

    def show
      @advertisements = current_user.advertisements
    end

    def new
      @advertisement = Advertisement.new
    end

    def edit; end

    def create
      @advertisement = current_user.advertisements.build(advertisement_params)
      if @advertisement.save
        redirect_to mypage_advertisements_path(@advertisement), notice: '広告を保存しました'
      else
        render :new
      end
    end

    def update
      if @advertisement.update(advertisement_params)
        redirect_to mypage_advertisements_path(@advertisement), notice: '広告を更新しました'
      else
        render :edit
      end
    end

    private

    def set_advertisement
      @advertisement = current_user.advertisements.find(params[:id])
    end

    def advertisement_params
      params.require(:advertisement).permit(:name, :advertisement_template_id, :title, :url, :qr_image, :qr_image_cache, :description, :use_template, :original_image, :original_image_cache)
    end
  end
end
