require_relative '../rails_helper'

RSpec.describe LandingTracker, type: :tracker do
  it 'tracks users has landed on home' do
    @coupons = []
    track_home

    expect(tracker).to have_received(:report).with('user has landed on home')
    expect(tracker).to have_received(:report).with("user has #{@coupons.length} coupons")
  end
end
