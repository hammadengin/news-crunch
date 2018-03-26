class AdminUser < ApplicationRecord
  #############
  # Includes #
  #############
  include PasswordComplexity

  ###########
  # Devise #
  ###########

  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  #################
  # Validations #
  ################

  # Validates  Password complexity. i.e. atleast one uppercase, one lowercase letter, one number and one special chracter
  # must be in the password. minimum length of password should be of 8 characters.
  validate :password_complexity
end
