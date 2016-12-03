class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @category_name = Category.find(@product.category_id).name
  end

  def new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    Product.create(user_params)
    redirect_to '/products'
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(user_params)
    redirect_to '/products'
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to '/products'
  end

  private
  def user_params
   params.require(:product).permit(:name, :description, :pricing, :category_id)
  end
end
