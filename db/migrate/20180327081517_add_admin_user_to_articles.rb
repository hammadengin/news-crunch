class AddAdminUserToArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :admin_user, foreign_key: true
  end
end
