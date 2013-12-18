module SessionsHelper
	def sign_in(membre)
    remember_token = Membre.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    membre.update_attribute(:remember_token, Membre.encrypt(remember_token))
    self.current_user = membre
  end
  def signed_in?
    !current_user.nil?
  end
  def current_user=(membre)
    @current_user = membre
  end
  def current_user
    remember_token = Membre.encrypt(cookies[:remember_token])
    @current_user ||= Membre.find_by(remember_token: remember_token)
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
