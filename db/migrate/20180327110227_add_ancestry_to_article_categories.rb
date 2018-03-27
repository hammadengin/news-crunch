class AddAncestryToArticleCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :article_categories, :ancestry, :string
    add_index :article_categories, :ancestry
  end
end
