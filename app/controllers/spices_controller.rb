class SpicesController < ApplicationController

    def index
        
        spices = Spice.all
        render json: spices
      end
    
    def create 
        spice = Spice.create(spice_params)
        render json: spice, status: :created 
    end


    def update 
        spice = Spice.find_by(id: params[:id])
        spice.update(rating: params[:rating])
        render json: {
            id: spice.id,
            title: spice.title,
            image: spice.image,
            description: spice.description, 
            notes: spice.notes, 
            rating: spice.rating
        }
    end

     

        def destroy 
            spice = Spice.find_by(id: params[:id])
            spice.destroy
            head :no_content
        end


        private 

        def spice_params 
            params.permit(:title, :description, :image, :notes, :rating, :id)
        end


end


# {
#     "id": 2,
#     "created_at": "2023-01-17T02:20:25.850Z",
#     "updated_at": "2023-01-17T02:20:25.850Z",
#     "title": "Caraway Seeds",
#     "image": "https://cdn.pixabay.com/photo/2018/05/16/05/11/seeds-3404903_1280.jpg",
#     "description": "A crusty grandmother. She walked fifteen miles to school every day. Uphill! Both ways! In the snow! She’s cantankerous, but then she has those moments where she makes you tea and homemade bread and enlightens you about the little things in life.",
#     "notes": "Bitter or Astringent, Sweet",
#     "rating": 2.0
# },