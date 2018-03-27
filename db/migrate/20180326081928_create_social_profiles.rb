class CreateSocialProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :social_profiles do |t|
      t.integer :type
      t.string :url

      t.timestamps
    end
  end
end
