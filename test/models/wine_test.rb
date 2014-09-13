require 'test_helper'

class WineTest < ActiveSupport::TestCase
  def setup
  	@wine = Wine.new
  end
  test 'name remembers its value' do
  	@wine.name = 'Crystal'
  	assert_equal 'Crystal', @wine.name
  end
  test 'winery remembers its value' do
  	@wine.winery = 'Napa Valley'
  	assert_equal 'Napa Valley', @wine.winery
  end
  test 'year remembers its value' do
  	@wine.year = 1980
  	assert_equal 1980, @wine.year
  end
  test 'persistence works properly' do
  	created_wine = Wine.create(name:'Chateau Montelena', year:2010, winery:'Napa Valley', country:'USA', varietal:'Chardonnay')
  	found_wine = Wine.find created_wine.id
  	assert_not_nil found_wine
  	assert_equal 'Chateau Montelena', found_wine.name
  	assert_equal 'Napa Valley', found_wine.winery
  	assert_equal 2010, found_wine.year
  end
  # test "update from a fixture" do
  # 	book = books(:ender)
  # 	assert_equal 4.83, book.price
  # 	book.price = 3.99
  # 	book.save
  # 	updated = Book.find(book.id)
  # 	assert_equal 3.99, updated.price
  # end
end
