CrudDemo::App.controllers :products do
  
  get :index do
    @products = Product.all
    render 'products/index'
  end

  get :show, :with => :id do
    @products = Product.find(params[:id])
    render 'products/show'
  end

  post :index do
    params[:title]
  end

  get :new do
    render 'products/new'
  end

  post :create do
    @product = Product.new
    @product.title = params[:title]
    @product.save
    redirect "products/show/#{@product.id}"
  end

  get ":id/edit" do
    @product = Product.find(params[:id])
    render 'products/edit'
  end

  post :edit do
    @product = Product.find(params[:id])
    @product.title = params[:new_name]
    @product.save
    redirect "products/show/#{@product.id}"
  end

  puts :index, :with => :id do
      @product = Product.find(params[:id])
      @product.title = "coolbeans"
      @product.save
      redirect "products/show/#{@product.id}"
  end

  delete :index, :with => :id do
      @product = Product.find(params[:id])
      @product.delete
      redirect "products"
  end



  delete :destroy do

  end

end
