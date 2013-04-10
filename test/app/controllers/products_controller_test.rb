require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class ProductsControllerTest < Test::Unit::TestCase
  context "ProductsController" do
  	#in shoulda, its 'setup do' not 'before do'
  	setup do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.start
      @product = Product.new(:title => "Chocolate Teapot")
      @product.save
  	end

    # should "return all Products when we visit /products" do
    # 	get '/products'
    #   assert last_response.ok?
    #   assert last_response.body.include?("Chocolate Teapot")
    # end

    # #When we visit a product page with that ID, it's the same one
    # should "return all Products when we visit /products/show/1" do
    # 	get '/products/show/1'
    #   assert last_response.ok?
    #   assert last_response.body.include?("Chocolate Teapot")
    # end

    # should "show me a form to create a product when we visit /products/new" do
    # 	get '/products/new'
    #   assert last_response.ok?
    #   assert last_response.body.include?("Create new product")
    # end

    # should "show me the new Product and save it to the database" do
    # 	#note we're using post here
    # 	post 'products/create', { :title => "Pogo stick"}
    # 	follow_redirect!
    # 	assert_equal "products/show/2", last_request.path
    #   assert last_response.body.include?("Chocolate Teapot")
  		# #At this point we should have two products
  		# assert_equal 2, Product.count  
    # end

    # should "show me a form to edit a product when we visit /products/1/edit" do
    # 	get '/products/1/edit'
    #   assert last_response.ok?
    #   assert last_response.body.include?("Edit Chocolate Teapot")
    # end

		# should "update the existing record to be called Magic Beans" do
		# 	put '/products/1'
  #     follow_redirect!
  #     assert_equal "/products/1", last_request.path
  #     assert_equal 1, Product.count  
  # 	end 

  # 	should "delete the existing record" do
  # 		delete '/products/1'
  #     follow_redirect!
  #     assert_equal "/products", last_request.path
  #     assert_equal 0, Product.count
  # 	end	

    teardown do
      DatabaseCleaner.clean
    end

  end
end
