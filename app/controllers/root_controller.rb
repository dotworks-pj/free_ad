class RootController < BaseController
  def index
    @places = Place.limit(9)
  end
end
