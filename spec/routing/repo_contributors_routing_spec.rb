require 'spec_helper'

describe 'Repo search routing' do
  it 'root_path should be repo_contributors#search' do
    expect(:get => '/').to route_to(:controller => 'repo_contributors', :action => 'search')
  end

  it 'should display search result of a repo' do
    expect(:get => '/search/results').to route_to(:controller => 'repo_contributors', :action => 'results')
  end
  it 'should display search result after a post' do
    expect(:post => '/search').to route_to(:controller => 'repo_contributors', :action => 'results')
  end

  it 'should display individual search results' do
    expect(:get =>'/search/repo/Bijoux/owner/louagej').to route_to(:controller => 'repo_contributors', :action => 'show', :repo_name => 'Bijoux', :repo_owner => 'louagej')
  end
end
