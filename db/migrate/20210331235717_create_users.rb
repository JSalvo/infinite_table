class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.string :birthplace

      t.timestamps
    end
  end
end
