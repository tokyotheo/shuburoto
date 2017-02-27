# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def menu_link_to(item)
    if current_page?(item[:link])
      '<span class="current_page">' + item[:name] + '</span>'
    elsif item[:disabled]
      '<span class="disabled"> + item[:name]' + 'coming soon</span>'
    else
      link_to(item[:name], item[:link])
    end
  end
end
