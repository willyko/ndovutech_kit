class AddToolsRefToKits < ActiveRecord::Migration
  def change
    add_reference :kits, :tool, index: true, foreign_key: true
  end
end
