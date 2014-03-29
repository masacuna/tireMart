class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  # Loads up the view of the same name after the atction has executed 
  # app/views/products/index.html.erb

  def show
    @products = Product.find(params[:id])
  end

  def new
     
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
