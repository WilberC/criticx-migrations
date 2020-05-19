class AddCompanyRefToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :company, null: true, foreign_key: true
  end
end
