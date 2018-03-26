class Article < ApplicationRecord

  #################
  # Association   #
  #################
  belongs_to :user
  belongs_to :article_type

  #################
  # Validations   #
  #################
  # validates title presence
  validates :title, :presence => true, length: { maximum: 30 }

  # validates title, only alphabets and spaces are allowed
  validates_format_of :title, with: VALIDATION_SPACES_AND_ALPHABETS_ONLY

  # validates mini_description, only alphanumeric and spaces are allowed
  validates_format_of :mini_description, with: VALIDATION_SPACES_AND_ALPHANUMERIC_ONLY
end
