class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|

      t.string :title
      t.text :description
      t.text :cinemanum
      t.date :date

      t.integer :tix1
      t.integer :tix2
      t.integer :tix3
      t.integer :tix4


      t.datetime :time1s
      t.datetime :time1f
      t.datetime :time2s
      t.datetime :time2f
      t.datetime :time3s
      t.datetime :time3f
      t.datetime :time4s
      t.datetime :time4f


      t.string :img
      t.timestamps
    end
  end
end
