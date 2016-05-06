class ContactController < ApplicationController

  def index

    if params[:category].eql?('CustomerSupport')
      destination_email = "jfefes@togllc.com"
    else
      destination_email = "jfefes@gmail.com"
    end


    UserNotifier.send_contact_email(destination_email, params[:name], params[:email], params[:message]).deliver

    redirect_to '/customer-support', notice: 'Your email has been received!'
  end

end
