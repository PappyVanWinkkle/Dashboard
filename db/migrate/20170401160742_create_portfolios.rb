class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :subTitle
      t.text :body
      t.text :mainImage
      t.string :thumb_image
      t.string :text

      t.timestamps
    end
  end
end
