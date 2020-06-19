class IncludeLinksInArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :github_link, :string
    add_column :articles, :deployed_link, :string
  end
end
