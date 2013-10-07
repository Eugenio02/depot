require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must be not empty" do 
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end
  test "product price must be positive" do
   product = Product.new(:title => 'My book title', :description => 'yyy', :image_url => 'zz.jpg')
   
   product.price = -1
   asser product.invalid?
   assert_equals "must be greater than or equal to 0.01", product.errors[:price].join(';')
   
  end
