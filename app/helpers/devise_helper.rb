module DeviseHelper
  def devise_error_messages!
    resource.errors.full_messages.map do |msg|
      content_tag :div, msg, class: "alert alert-danger"
    end.join.html_safe
  end
end