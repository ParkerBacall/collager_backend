class CreateCanvaImages < ActiveRecord::Migration[6.0]
  def change
    create_table :canva_images do |t|
      t.references :canva, null: false, foreign_key: true
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
