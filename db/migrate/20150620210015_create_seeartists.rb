class CreateSeeartists < ActiveRecord::Migration
  def change
    create_table :seeartists do |t|

      t.timestamps
    end
  end
end
