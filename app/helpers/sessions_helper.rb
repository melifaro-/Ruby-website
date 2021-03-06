module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def signed_in?
    if !current_user.nil?
      print "LOG::signed_in? YES"
    else
      print "LOG::signed_in? NO"
    end

    !current_user.nil?
  end

  def signed_in_admin?
    !current_user.nil? && current_user.name == "admin"
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def current_user?(user)
    user == current_user
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
