require 'spec_helper'
require_relative '../../lib/repositories_action.rb'
require 'pry'

describe 'Simple module to get informations from github api' do
  context 'Search for repos and find informations' do
    before(:each) do
      @search = RepositoriesAction::Search.new()
    end

    it 'should search for repos with the name' do
      expect(@search.search_repositories('Bijoux')).not_to eq nil
    end

    it 'should get repos contributor list' do
      expect(@search.get_repos_contributor_list('louagej','Bijoux')).not_to eq nil
    end

    it 'should search contributor information with is pseudo' do
      expect(@search.send(:search_contributor_informations, 'Bijoux')).not_to eq nil
    end

    it 'should concat pieces of an url' do
      expect(@search.send(:concat_url, '/users/mosleymos')).to eq 'https://api.github.com/users/mosleymos'
    end
  end
end
