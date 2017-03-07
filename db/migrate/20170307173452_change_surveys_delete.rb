class ChangeSurveysDelete < ActiveRecord::Migration[5.0]
  def change
    drop_table :surveys
    remove_column :questions, :survey_id
  end
end
