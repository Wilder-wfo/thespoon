class RestaurantsController < ApplicationController
  # line below will call #set_restaurant method before specified actions
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
      @restaurants = Restaurant.all
  end

  def show
#    set_restaurant
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
      @restaurant = Restaurant.new(restaurant_params)
      # Will raise ActiveModel::ForbiddenAttributesError
      
      if @restaurant.save
      # no need for app/views/restaurants/create.html.erb
      redirect_to restaurants_path        
      else
        flash[:errors] = @restaurant.errors.full_messages
        redirect_to "/restaurants/new"
      end      
  end

  def edit
#    set_restaurant
  end

  def update
#    set_restaurant
    @restaurant.update(restaurant_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    # no need for app/views/restaurants/update.html.erb
    redirect_to restaurants_path
  end

  def destroy
#    set_restaurant
    @restaurant.destroy
  
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
