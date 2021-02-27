class Types::UniverseType < Types::BaseObject
    field :type_id, Integer, "Type ID", null: false
    field :name, String, "Type Name", null: false
end