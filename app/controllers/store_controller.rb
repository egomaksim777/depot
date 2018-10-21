class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @visits_counter = visits_counter
  end
end
