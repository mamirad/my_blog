class CreateArticleComments < ActiveRecord::Migration[5.2]
  def change
    create_table :article_comments do |t|
      t.string :comment
      t.references :user, foreign_key: true
      t.references :article, foreign_key: true
      t.integer :parent_id

      t.timestamps
    end
  end
end
