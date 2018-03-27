require 'faker'

##############
# ADMIN USER #
##############
begin
  admin = AdminUser.create(
      first_name:     Faker::Name.first_name,
      middle_name:    Faker::Name.first_name,
      last_name:      Faker::Name.last_name,
      about:          Faker::Lorem.sentence,
      dob:            Faker::Date.birthday(18, 65),
      gender:         ['Male', 'Female'].sample,
      phone:          Faker::PhoneNumber.phone_number,
      email: 'admin@example.com',
      password: 'Hkhkhk!1',
      password_confirmation: 'Hkhkhk!1'
  )
rescue ActiveRecord::RecordNotUnique
  admin = AdminUser.find(1)
end

####################
# ARTICLE CATEGORY #
####################
15.times do
  begin
      article_category = ArticleCategory.create(
          article_type: Faker::ProgrammingLanguage.name
      )
  rescue ActiveRecord::RecordNotUnique
    article_category = AdminUser.find(1)
  end
end



