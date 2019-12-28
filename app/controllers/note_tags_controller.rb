class NoteTagsController < ApplicationController
    def create
        
    end

    def destroy
    end

    private
    def note_tag_params
        params.require(:note).permit(:note_id, :user_id)
    end
    
end