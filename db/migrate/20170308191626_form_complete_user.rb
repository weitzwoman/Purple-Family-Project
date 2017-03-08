class FormCompleteUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :form_complete, :boolean, default: false
  end
end
