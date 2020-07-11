class LandingController < ApplicationController
  include Tracker

  def home
    @coupons = [:free_large, :two_medium, :two_toppings]
  end
end
