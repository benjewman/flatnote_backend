class NoteTagsController < ApplicationController
    def create
        note_tag = NoteTag.create(note_tag_params)
        note_tag.save
        render json: note_tag
    end

    def destroy
    end

    private
    def note_tag_params
        params.require(:note_tag).permit(:note_id, :tag_id)
    end
    
end