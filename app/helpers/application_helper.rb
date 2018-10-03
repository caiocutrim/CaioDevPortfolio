module ApplicationHelper
  def login_helper style
		if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path, class: style) +
      (link_to "Login", new_user_session_path, class: style)
		else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
		end
	end
	def source_helper
    if session[:source]
    	gretting = "Thanks for visiting me from #{session[:source]}"
    	content_tag(:p, gretting)
    end
  end
  def copyright_generator
    @copyright = ViewTool::Renderer.copyright 'Caio Cutrim', 'All rights reserverd'
  end
  def nav_items
    [
      {
        url: root_path,
        title: 'Home',
      },
      {
        url: about_me_path,
        title: 'About me',
      },
      {
        url: contact_path,
        title: 'Contact',
      },
      {
        url: blogs_path,
        title: 'Blog',
      },
      {
        url: tech_news_path,
        title: 'Tech news',
      },
      {
        url: portfolios_path,
        title: 'Portfolio',
      }
    ]
  end
  def nav_helper class1, class2, tag_type
    nav_links = '' 
    nav_items.each do |item|
     nav_links << "<#{tag_type} class=#{class1}>" \
          "<a href='#{item[:url]}' class='#{class2} #{active? item[:url]}'>" \
          "#{item[:title]}</a></#{tag_type}>"
      
    end
    nav_links.html_safe
  end
  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Hey, dude!", sticky: false)
  end

end