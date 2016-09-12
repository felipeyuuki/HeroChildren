class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :nameNeighborhood
      t.references :sector, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
