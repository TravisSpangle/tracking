class LandingController < ApplicationController
  prepend LandingTracker

  def home
    @coupons = [:free_large, :two_medium, :two_toppings]
  end

  def contact
  end
end
