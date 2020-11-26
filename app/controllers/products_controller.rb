class ProductsController < InheritedResources::Base
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    @categories = Category.all
  end

  def by_category
    category = Category.find(params[:category_id])
    @cat_products = category.products
    respond_to do |format|
      format.js 
    end
  end

  def show
  end

  def new
    @category = Category.all.order(name: :desc)
  end
 
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @category = Category.all.order(name: :desc)
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :count, :small_desc, :description, :price, :available, :image, :category_id)
    end

end
