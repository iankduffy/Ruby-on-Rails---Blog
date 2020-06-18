class AddArticleBody < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :article_body, :string
  end
end
