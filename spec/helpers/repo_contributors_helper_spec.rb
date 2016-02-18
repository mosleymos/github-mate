require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the RepoContributorsHelper. For example:
#
# describe RepoContributorsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe RepoContributorsHelper do
  it '#show_my_location' do
    expect(show_my_location(nil)).to eq "Aucune location indiquée"
  end
end
