require_relative '../lib/uni_tracker'
module LandingTracker
  def home
    Uni::Tracker.report('user has landed on home')
    Uni::Tracker.report("user has #{@coupons.length} coupons")
  end
end
