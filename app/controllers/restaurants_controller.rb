class RestaurantsController < ApplicationController

  def index # ver a lista de todos os restaurantes
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id]) # mostrar os restaurantes de acordo com o params passados
    @review = Review.new
  end
  
  
  def new # metodo para obter informacoes do usuario para criar um novo restaurante
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
