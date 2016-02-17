require 'spec_helper'
require_relative '../../lib/repositories_action.rb'

describe 'Simple module to get informations from github api' do
  context 'Search for repos and find informatios' do
    before(:each) do
      @search = RepositoriesAction::Search.new()
    end

    it 'should search for repos with the name' do
      expect(@search.search_repositories('mosleymos.github.io')).not_to eq nil
    end

    it 'should search contributor information with is pseudo' do
      expect(@search.search_contributor_informations('mosleymos.github.io')).not_to eq nil
    end

    it 'should search contributor information with is pseudo' do
      expect(@search.find_contributor_location_coordinates('mosleymos.github.io')).not_to eq nil
    end

  end
end
