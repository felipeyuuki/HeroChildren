class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :descriptionTeam
      t.integer :limitChildrenTeam
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
