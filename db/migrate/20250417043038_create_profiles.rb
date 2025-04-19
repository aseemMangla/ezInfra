class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :role
      t.string :email
      t.string :linkedln
      t.string :github
      t.string :other

      t.timestamps
    end
  end
end
