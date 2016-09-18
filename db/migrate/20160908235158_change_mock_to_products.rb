class ChangeMockToProducts < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.rename :title, :name
      t.change :description, :text
      t.change :price, :decimal, precision: 10, scale: 2
      t.remove :isbn, :string
    end
  end
end
# Same as ChangeThingsInProducts just different syntax