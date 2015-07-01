class AddKitRefToTools < ActiveRecord::Migration
  def change
    add_reference :tools, :kit, index: true, foreign_key: true
  end
end
