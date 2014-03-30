class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  # Loads up the view of the same name after the atction has executed 
  # app/views/products/index.html.erb

  def show
    @product = Product.find(params[:id])
  end# Loads: apps/views/products/new.html.erb

  def new
     @product = Product.new
  end # We either redirect or render the new view

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: :index
    else
      render :new
    end
  end# Either redirect or render the new view

  def edit
    @product = Product.find(params[:id])
  end# Loads: app/views/products/edit.html.erb

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render :edit
    end
  end# Either redirect or render the edit view 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end# Always redirect to the root after we have deleted

  private
    def product_params
      params.require(:product).permit(:name, :price, :description,:stock_quantity,:image_filename)
    end
end 
