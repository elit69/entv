module ApplicationHelper
  def redirect_back_or_to(path)
    if session && session[:referer]
      referer = session[:referer]
      session.delete(:referer)
      redirect_to referer
    else
      redirect_to path
    end
  end
  
  def full_title(title = nil)
    base_title = "Cambo Online Electronics Store"
    if title.blank?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end
end
