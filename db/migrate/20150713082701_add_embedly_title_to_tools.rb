class AddEmbedlyTitleToTools < ActiveRecord::Migration
  def change
    add_column :tools, :embedly_title, :string
    add_column :tools, :embedly_description, :text
  end
end
