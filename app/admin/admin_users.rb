ActiveAdmin.register AdminUser do

  ##########################
  # Whitelist Attributes #
  #########################

  permit_params :email, :password, :password_confirmation

  ###########
  # Index   #
  ###########

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :about
    column :dob
    column :gender
    column :phone
    column :email
    column :current_sign_in_at
    column :created_at
    actions
  end

  #############
  # Filters   #
  #############

  filter :first_name
  filter :last_name
  filter :email
  filter :gender
  filter :created_at

  ##########
  # Form   #
  ##########

  form do |f|
    f.inputs do
      f.input :first_name,  :required => true
      f.input :middle_name
      f.input :last_name,  :required => true
      f.input :about
      f.input :dob
      f.input :gender, collection: ["Male", "Female"]
      f.input :phone
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
