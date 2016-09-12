class CreateMothers < ActiveRecord::Migration
  def change
    create_table :mothers do |t|
      t.string :nameMother
      t.string :occupationMother
      t.boolean :maternityLeaveMother
      t.string :addressMother
      t.references :neighborhood, index: true, foreign_key: true
      t.string :telephoneMother
      t.float :salaryMother
      t.float :salaryFamilyMother
      t.float :familyPurseMother
      t.integer :amountPeopleFamilyMother

      t.timestamps null: false
    end
  end
end
