class CreateBetaSignUps < ActiveRecord::Migration
  def change
    create_table :beta_sign_ups do |t|
      t.string :emailAddress

      t.timestamps
    end
  end
end
