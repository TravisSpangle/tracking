require_relative '../lib/uni_tracker'
module LandingTracker
  def home
    Uni::Tracker.send('user has landed on home')
    Uni::Tracker.send("user has #{@coupons.length} coupons")
  end
end
