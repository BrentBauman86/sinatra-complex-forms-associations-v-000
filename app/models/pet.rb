class Pet < ActiveRecord::Base
  belongs_to :owner
end

class CreateOwnersTable < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
    end
  end
end


class CreatePetsTable < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :owner_id
    end
  end
end
