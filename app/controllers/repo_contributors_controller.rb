class RepoContributorsController < ApplicationController
  include RepositoriesAction
  before_action :repo_contributor_params, :only => [:results, :show]
  def search
  end

  def results
    @search = RepositoriesAction::Search.new
    @search_results = @search.search_repositories(params[:repo_search])
  end

  def show
  end

  private
  def repo_contributor_params
    params.permit(:repo_search)
  end
end
