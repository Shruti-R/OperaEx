class HomeController < ApplicationController
  def set_layout
   session["layout"] = (params[:mobile] == "1" ? "mobile" : "normal")
   redirect_to :controller=>"mobile",:action => "index"
  end
def index
  
end


end
