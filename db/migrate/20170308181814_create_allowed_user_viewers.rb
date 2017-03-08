class CreateAllowedUserViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :allowed_user_viewers do |t|
      t.integer :user_id
      t.string :user_email
    end
  end
end
