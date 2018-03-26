class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column    :users, :first_name, :string
    add_column    :users, :middle_name, :string
    add_column    :users, :last_name, :string
    add_column    :users, :about, :string
    add_column    :users, :dob, :date
    add_column    :users, :phone, :string
    add_column    :users, :gender, :string
  end
end
