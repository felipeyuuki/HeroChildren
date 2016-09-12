class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :nameSchool
      t.integer :vacanciesSchool
      t.references :neighborhood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
