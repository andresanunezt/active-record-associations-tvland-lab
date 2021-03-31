class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
    t.string :first_name
    t.string :last_name
    end
  end
end

# has a first and last name (FAILED - 1)
#   has associated characters in an array (FAILED - 2)
#   can build its associated characters (FAILED - 3)
#   can build its associated shows through its characters (FAILED - 4)
#   can list its full name (FAILED - 5)
#   can list all of its shows and characters (FAILED - 6)