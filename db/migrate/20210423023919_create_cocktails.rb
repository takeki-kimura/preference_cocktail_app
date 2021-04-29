class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string     :cocktail_name,   null: false
      t.integer    :glass_id,        null: false
      t.integer    :base_alcohol_id, null: false 
      t.integer    :taste_id,        null: false
      t.integer    :degree_id,       null: false
      t.text       :cocktail_recipe, null: false
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
