require 'spec_helper'

describe "shows/index" do

  it "should list all shows" do
    render
    rendered.should have_content("TV-Shows")

  end
end
