class CreateScrapes < ActiveRecord::Migration[7.0]
  def change
    create_table :scrapes do |t|
      t.string :link
      t.string :pages

      t.timestamps
    end
  end
end
