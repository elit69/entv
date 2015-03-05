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
end
