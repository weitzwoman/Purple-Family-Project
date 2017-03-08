class ChangeAnswersResponseToBoolean < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :response, :string
    add_column :answers, :response1, :boolean, default: false
    add_column :answers, :response2, :boolean, default: false
    add_column :answers, :response3, :boolean, default: false
    add_column :answers, :response4, :boolean, default: false
  end
end
