class CreateCampings < ActiveRecord::Migration[5.0]
  def change
    create_table :campings do |t|
      t.string :camping_name
      t.string :description
      t.string :overview
      t.string :rules
      t.decimal :pricing
      t.string :direction
      t.string :photo

      t.timestamps
    end
  end
end
