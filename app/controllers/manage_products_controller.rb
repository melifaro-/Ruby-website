class ManageProductsController < Admin::AdminController
  def index
    @products = Product.order("created_at ASC")
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    #@product.photo = nil
    #redirect_to manage_products_path
    if @product.save
      redirect_to manage_products_path
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to manage_products_path
    else
      render 'edit'
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to manage_products_path
  end
end
