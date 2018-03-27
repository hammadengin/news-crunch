ActiveAdmin.register ArticleCategory do

  ##########################
  # Whitelist Attributes #
  #########################

  permit_params :article_type

  ###########
  # Index   #
  ###########

  index do
    column :article_type
    column :created_at
    column :updated_at
    actions
  end

  #############
  # Filters   #
  #############

  filter :article_type
  filter :created_at

  ##########
  # Form   #
  ##########

  form :html => { :enctype => 'multipart/form-data' } do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Article Categories' do
      f.input :article_type
    end
    f.actions
  end
end