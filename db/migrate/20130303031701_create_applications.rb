class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :url
      t.string :apiKey
      t.boolean :isActive

      t.timestamps
    end
  end
end
