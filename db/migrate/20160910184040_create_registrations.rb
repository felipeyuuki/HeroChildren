class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.date :dateRegistration
      t.string :noteRegistration
      t.references :child, index: true, foreign_key: true
      t.references :mother, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
