class ApplicationController < ActionController::Base

  helper :all
    protect_from_forgery
    layout :detect_browser

    private
    MOBILE_BROWSERS = ["android",  "opera mini", "blackberry", "palm"]

def detect_browser
    layout = selected_layout
    return layout if layout
    agent = request.headers["HTTP_USER_AGENT"].downcase

    MOBILE_BROWSERS.each do |m|
      return "mobile_application" if agent.match(m)
    end
    return "application"
  puts "application"
  end

  def selected_layout
    session.inspect # force session load
    if session.has_key? "layout"
      return (session["layout"] == "mobile") ?
        "mobile_application" : "application"
      redirect_to ":controller=>'mobile' ,:action=>'index'"
    end
    return nil
  end
end
