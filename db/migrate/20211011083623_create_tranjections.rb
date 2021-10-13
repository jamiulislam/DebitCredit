class CreateTranjections < ActiveRecord::Migration[6.1]
  def change
    create_table :tranjections do |t|
      t.string :tranjectiontype
      t.string :uses
      t.string :amount

      t.timestamps
    end
  end
end
