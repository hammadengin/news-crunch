module PasswordComplexity

  #############
  # Methods   #
  #############

  # Method for validate :password_complexity to check password validation conditions.
  def password_complexity
    if password.present? and not password.match(PASSWORD_COMPLEXITY)
      errors.add :password, "minimum length must be 8 characters, must include at least one lowercase letter, one uppercase letter, one digit and one special character"
    end
  end
end
