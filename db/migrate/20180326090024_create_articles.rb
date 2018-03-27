class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :mini_description
      t.text :description
      t.date :published_date
      t.integer :total_views

      t.timestamps
    end
  end
end
