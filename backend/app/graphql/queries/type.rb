module Queries
    class Type < Queries::BaseQuery
        include ::EsiHelper

        description 'Find an Eve Online Universe Type by ID'

        argument :type_id, Integer, required: true

        type Types::UniverseType, null: true

        def resolve(type_id:)
            path = "v3/universe/types/#{type_id}/"
            response = esi_client.get(path)
            json = response.body
            JSON.parse(json)
        end
    end
end