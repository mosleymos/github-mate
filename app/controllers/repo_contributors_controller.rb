class RepoContributorsController < ApplicationController
  include RepositoriesAction
  before_action :repo_contributor_params, :only => [:results, :show]
  
  # Homepage - search form
  def search
  end

  # List of repos after a search
  def results
    @search = RepositoriesAction::Search.new
    @search_results = @search.search_repositories(params[:repo_search])
  end

  # show repo informations (contributors, maps ...)
  def show
    @search_repository = RepositoriesAction::Search.new
    @repository_informations = @search_repository.get_repos_contributor_list(params[:repo_owner], params[:repo_name])
  end

  private

  def repo_contributor_params
    params.permit(:repo_search, :repo_name, :repo_owner)
  end
end
