require 'spec_helper'
require_relative '../../lib/repositories_action.rb'
require 'typhoeus'

describe 'Simple module to get informations from github api' do
  context 'Search for repos and find informations' do
    before(:each) do
      @search = RepositoriesAction::Search.new()
    end

    it 'should search for repos with the name' do
      VCR.use_cassette 'lib/repository_action/search' do
        resp = Typhoeus.get('https://api.github.com/search/repositories?q=Bijoux+in:name&type=Repositories')
        expect(@search.search_repositories('Bijoux')).not_to eq nil
      end

    end

    it 'should get repos contributor list' do
      VCR.use_cassette 'lib/repository_action/get_contributor_list' do
        resp = Typhoeus.get('https://api.github.com/repos/louagej/Bijoux/contributors')
        expect(resp).not_to eq nil
        expect(@search.get_repos_contributor_list('louagej','Bijoux')).not_to eq nil
      end
    end

    it 'should search contributor information with is pseudo' do
      VCR.use_cassette 'lib/repository_action/contributor_information' do
        resp = Typhoeus.get('https://api.github.com/users/louagej')
        expect(resp).not_to eq nil
        expect(@search.send(:search_contributor_informations, 'louagej')).not_to eq nil
      end

    end

    it 'should concat pieces of an url' do
      expect(@search.send(:concat_url, '/users/mosleymos')).to eq 'https://api.github.com/users/mosleymos'
    end
  end
end
