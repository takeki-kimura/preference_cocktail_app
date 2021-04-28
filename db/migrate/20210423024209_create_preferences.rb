class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.references    :user_id,     foreign_key: true
      t.integer    :cocktail_id, foreign_key: true
      t.timestamps
    end
  end
end
