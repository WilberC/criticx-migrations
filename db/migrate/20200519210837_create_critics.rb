class CreateCritics < ActiveRecord::Migration[6.0]
  def change
    create_table :critics do |t|
      t.string :username
      t.string :body
      t.reference :game

      t.timestamps
    end
  end
end
