require 'rails_helper'

RSpec.describe "sightings/index", type: :view do
  before(:each) do
    assign(:sightings, [
      Sighting.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :animal => nil
      ),
      Sighting.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :animal => nil
      )
    ])
  end

  it "renders a list of sightings" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
