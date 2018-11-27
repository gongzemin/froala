class RemoveArticleFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :article, foreign_key: true
  end
end
