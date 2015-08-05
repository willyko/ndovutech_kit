class AddEmbedlyurlToTools < ActiveRecord::Migration
  def change
    add_column :tools, :embedly_url, :string
  end
end
