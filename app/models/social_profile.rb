class SocialProfile < ApplicationRecord
  #################
  # Association   #
  #################
  belongs_to :user
end
