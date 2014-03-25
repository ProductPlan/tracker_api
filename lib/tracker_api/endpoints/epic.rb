module TrackerApi
  module Endpoints
    class Epic
      attr_accessor :client

      def initialize(client)
        @client = client
      end

      def get(project_id, id)
        data = client.get("/projects/#{project_id}/epics/#{id}").body

        Resources::Epic.new({ client: client }.merge(data))
      end
    end
  end
end
