class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tools, :embedly_url, :thumbnail_url
  end
end
