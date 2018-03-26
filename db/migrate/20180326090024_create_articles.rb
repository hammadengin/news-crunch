class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :mini_description
      t.text :description
      t.date :published_date
      t.references :user, foreign_key: true
      t.integer :total_views
      t.references :article_type, foreign_key: true

      t.timestamps
    end
  end
end
