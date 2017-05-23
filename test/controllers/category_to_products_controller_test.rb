require 'test_helper'

class CategoryToProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_to_product = category_to_products(:one)
  end

  test "should get index" do
    get category_to_products_url
    assert_response :success
  end

  test "should get new" do
    get new_category_to_product_url
    assert_response :success
  end

  test "should create category_to_product" do
    assert_difference('CategoryToProduct.count') do
      post category_to_products_url, params: { category_to_product: {  } }
    end

    assert_redirected_to category_to_product_url(CategoryToProduct.last)
  end

  test "should show category_to_product" do
    get category_to_product_url(@category_to_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_to_product_url(@category_to_product)
    assert_response :success
  end

  test "should update category_to_product" do
    patch category_to_product_url(@category_to_product), params: { category_to_product: {  } }
    assert_redirected_to category_to_product_url(@category_to_product)
  end

  test "should destroy category_to_product" do
    assert_difference('CategoryToProduct.count', -1) do
      delete category_to_product_url(@category_to_product)
    end

    assert_redirected_to category_to_products_url
  end
end
