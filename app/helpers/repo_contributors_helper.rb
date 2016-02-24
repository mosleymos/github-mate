module RepoContributorsHelper
  # Show location or 'No location'
  def show_my_location(location=nil)
    return content_tag(:h5, 'Aucune location indiquée') if location.nil? else content_tag(:h5, location)
  end
end
