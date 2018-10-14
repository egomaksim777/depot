class StoreController < ApplicationController
  include CurrentCart

  def index
    @products = Product.order(:title)
    @visits_counter = visits_counter
  end
end
