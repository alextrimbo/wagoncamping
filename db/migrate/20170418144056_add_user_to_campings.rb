class AddUserToCampings < ActiveRecord::Migration[5.0]
  def change
    add_reference :campings, :user, foreign_key: true
  end
end
