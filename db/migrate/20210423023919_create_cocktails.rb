class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string     :cocktail_name
      t.integer    :glass_id
      t.integer    :base_alcohol_id
      t.integer    :taste_id
      t.integer    :degree_id
      t.text       :cocktail_recipe
      t.timestamps
    end
  end
end
