require "rails_helper"

RSpec.describe PerfilController, type: :routing do
  describe "routing" do
    it "routes to #perfil" do
      expect(get: "/perfil").to route_to("perfil#perfil")
    end

    it "routes to #editprofile" do
      expect(patch: "/editprofile").to route_to("perfil#editprofile")
    end
  end
end
