require 'swagger_helper'

describe 'Message API' do
  path '/api/v1/random' do
    get 'Retrieves a message' do
      tags 'Random'
      produces 'application/json'
      response '200', 'Message found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 text: { type: :text },
                 created_at: { type: :string },
                 updated_at: { type: :string }
               },
               required: %w[id text created_at updated_at]

        run_test!
      end
    end
  end
end