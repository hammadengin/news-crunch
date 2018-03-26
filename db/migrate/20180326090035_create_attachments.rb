class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.integer :type
      t.string :url
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
