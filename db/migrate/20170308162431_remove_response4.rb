class RemoveResponse4 < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :response4, :boolean
  end
end
