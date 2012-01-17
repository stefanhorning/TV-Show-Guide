require 'spec_helper'

describe Show do
  it "finds shows with description" do
    Show.create(:name => "Name",:description => "contains IT")
    results = Show.containing("IT")
    results.length.should be 1
  end
  it "finds shows with content both in name and in description" do
    Show.create(:name => "find",:description => "contains IT")
    Show.create(:name => "find IT etc",:description => "contains")
    results = Show.containing("IT")
    results.length.should be 2
  end
end