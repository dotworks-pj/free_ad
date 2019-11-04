class Mypage::PlacesController < Mypage::BaseController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = current_user.places
  end

  def show
  end

  def new
    @place = Place.new
    space = @place.spaces.build
    space.build_space_images
  end

  def edit
    @place.spaces.each do |space|
      space.build_space_images
    end
  end

  def create
    @place = current_user.places.build(place_params)
    if @place.save
      redirect_to mypage_place_path(@place), notice: 'Place was successfully created.'
    else
      render :new
    end
  end

  def update
    if @place.update(place_params)
      redirect_to mypage_place_path(@place), notice: 'Place was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_place
      @place = current_user.places.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:title, :description, :name, :address, :station, :url, :main_image, :main_image_cache, spaces_attributes: [:id, :place_id, :name, :description, :charge, :_destroy, space_images_attributes: [:id, :image, :image_cache, :_destroy]])
    end
end
