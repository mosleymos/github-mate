require 'json'
require 'excon'
require 'geocoder'

module RepositoriesAction
  class Search
    # Ok
    def search_repositories(search_term)
       res = Excon.get('https://api.github.com/search/repositories?q='+ search_term + '+in:name'.concat('&type=Repositories'))
       return JSON.parse(res.body)
    end

    # Ok
    def get_repos_contributor_list(repo_owner, repo_name)
       res = Excon.get('https://api.github.com/repos/' + repo_owner + '/' + repo_name +'/contributors')
       return JSON.parse(res.body)
    end

    # Ok
    def search_contributor_informations(contributor_pseudo)
       res = Excon.get('https://api.github.com/users/' + contributor_pseudo)
       return JSON.parse(res.body)
    end

    # Ok
    def find_contributor_location_coordinates(contributor_location)
       return Geocoder.search(contributor_location)
    end
  end
end
