class CreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :article_categories do |t|
      t.integer :article_id
      t.integer :categoy_id
      t.timestamps
    end
  end
end
