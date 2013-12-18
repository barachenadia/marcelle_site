class Membre < ActiveRecord::Base
	before_create :create_remember_token
 
 # -- Validation de l'adresse mail 
     before_save { self.email = email.downcase }
	 validates :email, :presence => true 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, :presence => true, :format => { :with => VALID_EMAIL_REGEX }, :uniqueness => { :case_sensitive => false }
 # -- Validation de l'adresse mail 

 has_secure_password
 validates :password, :length => { :minimum => 8 }

 def Membre.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Membre.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

end
