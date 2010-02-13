class User < ActiveRecord::Base

  validates_presence_of         :login
  validates_uniqueness_of       :login 
  attr_accessor                 :password_confirmation 
  validates_confirmation_of     :password 
  validate :password_non_blank

  #update of metadata for login
  def update_metadata(options={})
    self.update_attributes(options) 
  end

  #Verifie la presence du mot de passe 
  def password_non_blank
    errors.add(:password, "Missing Password") if hashed_password.blank?
  end
  
   def password
    @password
  end

  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password,self.salt)
  end
 
  def self.authenticate(login,password)
    user = self.find_by_login(login)
    if user 
      expected_password = encrypted_password(password,user.salt)
      if user.hashed_password != expected_password
        user = nil 
      end
    end 
   
    user
  end
  
    def self.encrypted_password(password,salt)
    string_to_hash = password + "alfaromeo" + salt 
    Digest::SHA1.hexdigest(string_to_hash)
  end
  
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  # Raise an error if last user delete and roll back the transaction using rails after_destroy
  # hooks. The error must be catch at the controller level.
  # Any error raise will cause a roll back on the transaction.
  def after_destroy
    if User.count.zero?
      raise I18n.translate('user_table.last_user')
    end
  end
protected 


end
