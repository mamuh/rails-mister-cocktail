class AddImageToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :image, :string, default: "https://www.amathusdrinks.com/SupplyImages/WF20003/Our%20Brands.jpg"
  end
end
