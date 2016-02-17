class RepoContributorsController < ApplicationController
  before_action :repo_contributor_params, :ony => [:results, :show]
  def search
  end

  def results
    @search_results = params[:repo_search]
  end

  def show
  end

  private
  def repo_contributor_params
    params.permit(:repo_search)
  end
end
