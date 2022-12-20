require "rails_helper"

RSpec.describe RegistrationsController, type: :routing do
  describe "routing" do
    it "routes to #signup" do
      expect(get: "/signup").to route_to("registrations#new")
    end

    it "routes to #login" do
      expect(get: "/login").to route_to("registrations#login")
    end

    it "routes to #create signup" do
      expect(post: "/signup").to route_to("registrations#create")
    end

    it "routes to #destroy login" do
      expect(delete: "/logout").to route_to("sessions#destroy")
    end
  end
end
