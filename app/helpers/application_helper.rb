module ApplicationHelper  
  def login_helper(style = "")
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) + " " +
      (link_to "Login", new_user_session_path, class: style)      
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}. You are on the #{layout_name} layout."
      content_tag(:p, greeting , class: "source-greeting")
    end
  end

  def copyright_generator
    KcsViewTool::Renderer.copyright("KC Sheng", "All rights reserved")
  end 
  
# Initial implementation of nav_helper
#   def nav_helper(style, tag) ## Pick parameters that distinguish pages' styles. 
# nav_links = <<LINKS ## heredoc - easy string interpolation (avoid single quotation marks)
# <#{tag}><a href="#{root_path}" class="#{style} #{active_or_not(root_path)}">Home</a></#{tag}>
# <#{tag}><a href="#{about_me_path}" class="#{style} #{active_or_not(about_me_path)}">About-me</a></#{tag}>
# <#{tag}><a href="#{contact_path}" class="#{style} #{active_or_not(contact_path)}">Contact</a></#{tag}>
# <#{tag}><a href="#{blogs_path}" class="#{style} #{active_or_not(blogs_path)}">Blogs</a></#{tag}>
# <#{tag}><a href="#{portfolios_path}" class="#{style} #{active_or_not(portfolios_path)}">Portfolio</a></#{tag}>
# LINKS
#     nav_links.html_safe
#   end

  def nav_pages
    { "Home" => root_path,
      "About me" => about_me_path, 
      "Contact" => contact_path, 
      "Blogs" => blogs_path, 
      "Portfolio" => portfolios_path
    } 
  end

  def active_or_not(path)
    "active" if current_page?(path)
  end

  def nav_helper(style, tag)
    nav_links = ""    
    nav_pages.each do |page, path|
      active_state = active_or_not(path)
      nav_links << "<#{tag}><a href='#{path}' class='#{style} #{active_state}'>#{page}</a></#{tag}>"
    end
    nav_links.html_safe
  end

end
