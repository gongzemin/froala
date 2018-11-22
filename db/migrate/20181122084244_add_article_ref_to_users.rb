class AddArticleRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :article, foreign_key: true
  end
end
