class LandingController < ApplicationController
  def home
    Tracker.send('user has landed on home')
  end
end
