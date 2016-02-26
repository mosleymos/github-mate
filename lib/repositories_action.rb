require 'json'
require 'net/http'

module RepositoriesAction
  class Search
    GITHUB_API_ADDRESS='https://api.github.com'
    # search repo in github with a term
    def search_repositories(search_term)
       return "Aucun resultat" if search_term.to_s.nil?
       @res = Net::HTTP.get_response(URI(concat_url('/search/repositories?q=', search_term.to_s, '+in:name', '&type=Repositories')))
       return JSON.parse(@res.body)
    end

    # Get list of contributor from a repo
    def get_repos_contributor_list(repo_owner, repo_name)
       @res = Net::HTTP.get_response(URI(concat_url('/repos/', repo_owner.to_s,'/',repo_name.to_s,'/contributors')))
       @res =  JSON.parse(@res.body).each do |contributor|
         contributor['location'] = search_contributor_informations(contributor['login'])['location']
       end
       return @res
    end

    private

    # Concat an url
    def concat_url(*url_parts)
      @complete_url = GITHUB_API_ADDRESS + (url_parts.join(''))
      return @complete_url
    end

    # search contributor information
    def search_contributor_informations(contributor_pseudo)
       @res = Net::HTTP.get_response(URI('https://api.github.com/users/' + contributor_pseudo.to_s))
       return JSON.parse(@res.body)
    end
  end
end
