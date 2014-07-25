class AddArticleIdToThanks < ActiveRecord::Migration
  def change
    add_column :thanks, :article_id, :integer
  end
end
