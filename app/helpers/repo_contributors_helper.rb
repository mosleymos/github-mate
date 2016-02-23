module RepoContributorsHelper
  def show_my_location(location=nil)
    return 'Aucune location indiquée' if location.nil?
    location_info = content_tag(:h5, location)
  end

  def show_my_map(location)
  end

  def show_contributor_info(contributor)
    content_tag :div, :class => 'contributor-info' do
        image_tag(contributor['avatar_url'], :alt => 'contributor avatar', :size => '62x62' )
        content_tag(:h3, contributor['login'])
        content_tag(:h5,show_my_location(contributor['location']))
    end
  end
end
