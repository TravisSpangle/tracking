require_relative '../rails_helper'

RSpec.describe LandingTracker, type: :tracker do
  it 'tracks users has landed on home' do
    tracker = spy('tracker')
    stub_const('Uni::Tracker', tracker)

    @coupons = []
    LandingTracker.instance_method(:home).bind(self).call

    expect(tracker).to have_received(:report).with('user has landed on home')
    expect(tracker).to have_received(:report).with("user has #{@coupons.length} coupons")
  end
end
