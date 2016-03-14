require 'rails_helper'

RSpec.describe "sightings/show", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :animal => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
