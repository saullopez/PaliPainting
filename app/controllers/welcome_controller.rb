class WelcomeController < ApplicationController

	def index

	end

	def about_me

	end

  def contact

  end

  def send_contact
    WelcomeMailer.enquiry(params[:name], params[:email], params[:message]).deliver
    redirect_to index_path
  end

end