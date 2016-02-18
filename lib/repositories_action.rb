require 'json'
require 'excon'
require 'geocoder'

module RepositoriesAction
  class Search
    # Ok
    def search_repositories(search_term)
       return "Aucun resultat" if search_term.to_s.nil?
       res = Excon.get('https://api.github.com/search/repositories?q='+ search_term.to_s + '+in:name'.concat('&type=Repositories'))
       return JSON.parse(res.body)
    end

    # Ok
    def get_repos_contributor_list(repo_owner, repo_name)
       res = Excon.get('https://api.github.com/repos/' + repo_owner.to_s + '/' + repo_name.to_s + '/contributors')
       return JSON.parse(res.body)
    end

    # Ok
    def search_contributor_informations(contributor_pseudo)
       res = Excon.get('https://api.github.com/users/' + contributor_pseudo.to_s)
       return JSON.parse(res.body)
    end

    # Ok
    def find_contributor_location_coordinates(contributor_location)
       return Geocoder.search(contributor_location.to_s)
    end
  end
end
