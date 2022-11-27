class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|

      t.string :neme

      t.timestamps
    end
  end
end
