class ListsController < ApplicationController
    def new
        @list = List.new
    end

    def create
        @list = List.find_by(title: user_params[:title])
        if !@list.nil?
            redirect_to lists_path
        else
            @list = List.create(list_params)
            if @list.save 
                @list = List.find_by(title: user_params[:title])

                redirect_to list_path(@list)
            else
                redirect_to lists_path
            end
        end
    end

    private 

    def user_params
        params.require(:user).permit(:fullname, :email, :password, :admin)
    end
end