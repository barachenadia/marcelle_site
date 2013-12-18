class SessionsController < ApplicationController
	def new
		
	end
	
   def create
    membre = Membre.find_by(:email => params[:session][:email].downcase)
    if membre && membre.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
      sign_in membre
      redirect_to root_path
    else
       flash.now[:error] = 'Invalid email/password combination'
       render 'new' 
      
    end
  end
  def destroy
    sign_out
    redirect_to root_url
  end
	
end
