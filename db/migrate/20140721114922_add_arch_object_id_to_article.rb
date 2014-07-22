class AddArchObjectIdToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :arch_object_id, :integer
  end
end
