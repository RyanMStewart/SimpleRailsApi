module Api
  module V1
    class AdsController < ApplicationController
      def index
        ads = Ad.all
        render json: { status: 'SUCCESS',message: 'Loaded Ads', data: ads }, status: :ok

        # Cannot call multiple renders in one method
        # cats = Cat.all
        # render json: { status: 'SUCCESS', message: 'Loaded Categories', data: cats }, status: :ok
      end
      def show
        ad = Ad.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Found Ad', data: ad}, status: :ok
      end
      def create
        Ad.create(ad_params)
      end
      def destroy
        @ad = Ad.find(params[:id])
        @ad.destroy
      end
      def ad_params
        params.permit(:title, :description, :user_id)
      end
    end
  end
end
