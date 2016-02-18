module RepoContributorsHelper
  def show_my_location(location=nil)
    return 'Aucune location indiquée' if location.nil?
    return location
  end
end
