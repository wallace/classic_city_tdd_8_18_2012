class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
