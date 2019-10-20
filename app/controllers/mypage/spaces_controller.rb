class Mypage::SpacesController < Mypage::BaseController
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = current_user.spaces
  end

  def show
  end

  def new
    @space = Space.new
  end

  def edit
  end

  def create
    @space = current_user.spaces.new(space_params)

    if @space.save
      redirect_to mypage_space_path(@space), notice: 'Space was successfully created.'
    else
      render :new
    end
  end

  def update
    if @space.update(space_params)
      redirect_to mypage_space_path(@space), notice: 'Space was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_space
      @space = current_user.spaces.find(params[:id])
    end

    def space_params
      params.require(:space).permit(:name, :charge, :status, :description)
    end
end
