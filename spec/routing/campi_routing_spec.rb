require "rails_helper"

RSpec.describe CampiController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/campi").to route_to("campi#index")
    end
  end
end
