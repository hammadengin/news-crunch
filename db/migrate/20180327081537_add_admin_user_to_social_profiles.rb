class AddAdminUserToSocialProfiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :social_profiles, :admin_user, foreign_key: true
  end
end
