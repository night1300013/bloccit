require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let (:advertisement) { Advertisement.create!(title: "New Ads Title", \
    copy: "New Copy", price: 123) }

  describe "attributes" do
    it "has title, copy, and price attributes" do
      expect(advertisement).to have_attributes(title: "New Ads Title", \
        copy: "New Copy", price: 123)
    end
  end
end
