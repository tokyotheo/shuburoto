class User < ActiveRecord::Base
  attr_accessor :password_new, :password_new_confirmation
  validates_confirmation_of :password_new,
    :message => 'が確認用パスワードと一致しません。'
  validates_uniqueness_of :user_id,
    :message => 'がユニークではありません'
  
  def self.authenticate(login_name, pwd)
    user = find_by_user_id(login_name)
    if user and pwd and user.password == hashed_password(pwd)
      user
    else
      nil
    end
  end

  def self.hashed_password(password)
    Digest::SHA1.hexdigest(sprintf("%s", password))
  end

  def password_new=(password)
    @password_new=password
    if password and password.size > 0
      write_attribute("password", Digest::SHA1.hexdigest(sprintf("%s", password)))
    end
  end
end  
