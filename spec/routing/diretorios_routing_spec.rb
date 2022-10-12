require "rails_helper"

RSpec.describe DiretoriosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/diretorios").to route_to("diretorios#index")
    end

    it "routes to #new" do
      expect(get: "/diretorios/new").to route_to("diretorios#new")
    end

    it "routes to #show" do
      expect(get: "/diretorios/1").to route_to("diretorios#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/diretorios/1/edit").to route_to("diretorios#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/diretorios").to route_to("diretorios#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/diretorios/1").to route_to("diretorios#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/diretorios/1").to route_to("diretorios#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/diretorios/1").to route_to("diretorios#destroy", id: "1")
    end
  end
end
