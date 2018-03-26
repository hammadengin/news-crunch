class User < ApplicationRecord

  #############
  # Includes #
  #############
  include PasswordComplexity

  ###########
  # Devise #
  ###########

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  #################
  # Association #
  #################

  # user has many articles
  has_many :articles ,   :dependent => :destroy

  #################
  # Validations #
  ################

  # Validates format of Phone Number. e.g. +923211234567 , 03211234567 , (555) (555) (555)
  validates_format_of :phone, with: VALIDATION_PHONE_NUMBER

  # Validates  Password complexity. i.e. atleast one uppercase, one lowercase letter, one number and one special chracter
  # must be in the password. minimum length of password should be of 8 characters.
  validate :password_complexity

end
