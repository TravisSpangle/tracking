require 'rails_helper'

RSpec.describe "Landings", type: :request do
  describe "GET /home" do
    let(:file_path) { '/Users/tspangle/dev/dump/pagliacci/tmp/tracker.txt' }

    before do
      File.delete(file_path) if File.exist?(file_path)
    end

    it "tracks users hitting landing" do
      get "/"

      expect(response).to have_http_status(:success)
      expect(File.exist?(file_path)).to be_truthy
      expect(File.open(file_path).read).to match(/user has \d+ coupons/)
    end
  end

end
