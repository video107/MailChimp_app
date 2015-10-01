class EmailapisController < ApplicationController

  def index
  end

  def subscribe
    @list_id = "ee4f2acf2b"
    gibbon = Gibbon::Request.new
    gibbon.lists(@list_id).members.create(body: {email_address: params[:email][:email], status: "subscribed"})
  end


end
