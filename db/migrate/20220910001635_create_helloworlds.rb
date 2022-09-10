class CreateHelloworlds < ActiveRecord::Migration[7.0]
  def change
    create_table :helloworlds do |t|
      t.string :index

      t.timestamps
    end
  end
end
