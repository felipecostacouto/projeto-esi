require "rails_helper"

RSpec.describe PerfilController, type: :routing do
  describe "routing" do
    it "routes to #perfil" do
      expect(get: "/perfil").to route_to("perfil#perfil")
    end
  end
end
