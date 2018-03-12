class CreateMicrophones < ActiveRecord::Migration[5.1]
  def change
    create_table :microphones do |t|
      t.string :make
      t.string :model
      t.string :mictype
      t.string :price

      t.timestamps
    end
  end
end
