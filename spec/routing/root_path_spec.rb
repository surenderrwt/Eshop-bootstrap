require "rails_helper"

RSpec.describe "Checking Routings", :type => :routing do

  context "checking visitor paths" do

    it "user should be at root path" do

      expect(:get => '/' )
      .to route_to(
        controller: "home",
        action: "index"
      )
    end

    it "user should able to view products" do

      expect(:get => '/products' )
      .to route_to(
        controller: "products",
        action: "index"
      )
    end
  end

end