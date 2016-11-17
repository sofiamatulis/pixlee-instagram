class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :thumbnail_url
      t.string :owner
      t.string :link

      t.timestamps
    end
  end
end
