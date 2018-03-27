ActiveAdmin.register Article do

  ##########################
  # Whitelist Attributes #
  #########################

  permit_params :title, :mini_description, :description, :published_date, :admin_user_id

  ###############
  # Callbacks   #
  ###############

  before_create do |article|
    article.admin_user = current_admin_user
  end

  ###########
  # Index   #
  ###########

  index do
    selectable_column
    id_column
    column :title
    column :mini_description
    column :published_date
    column :admin_user_id
    column :total_views
    actions
  end

  #############
  # Filters   #
  #############

  filter :created_at
  filter :title
  filter :mini_description
  filter :published_date

  ##########
  # Form   #
  ##########

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :title,  :required => true
      f.input :mini_description,  :required => true
      f.input :description,  :required => true
      f.input :published_date, as: :date_picker,  :required => true
    end
    f.actions
  end

end