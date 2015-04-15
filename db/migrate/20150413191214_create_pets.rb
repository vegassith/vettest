class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, :limit => 35, null: false
      t.references :typeofpet, index: true
      t.string :breed,  :limit => 35,  null: false
      t.integer :age, null: false
      t.integer :weight, null: false
      t.date :lastvisit, null: false

      t.timestamps null: false
    end
  end
end
