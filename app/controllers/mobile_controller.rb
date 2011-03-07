class MobileController < ApplicationController
  def index
    @agent1=request.headers["HTTP_USER_AGENT"].downcase
  end

end
