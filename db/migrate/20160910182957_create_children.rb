class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :nameChild
      t.date :birthDateChild
      t.references :mother, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
