class StoreController < ApplicationController
  include CurrentCart

  def index
    @products = Product.order(:title)
    @session = visits_counter
  end
end
