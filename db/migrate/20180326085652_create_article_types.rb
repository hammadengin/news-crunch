class CreateArticleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :article_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
