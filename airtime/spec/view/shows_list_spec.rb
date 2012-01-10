require 'spec_helper'

describe "shows/index.html.erb" do

  it "should list all shows" do
    render
    rendered.should have_content("TV-Shows")
    #To change this template use File | Settings | File Templates.

  end
end