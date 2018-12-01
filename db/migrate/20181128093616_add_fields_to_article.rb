class AddFieldsToArticle < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :goal, :float
  	add_column :articles, :subtitle, :text
  	add_column :articles, :project_cover, :string
  	add_column :articles, :project_video, :string
  end
end
