class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :publish
      t.text :body
      t.string :title
      t.string :status
      t.string :avatar

      t.timestamps
    end
  end
end
