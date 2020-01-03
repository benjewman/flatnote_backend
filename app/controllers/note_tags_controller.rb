class NoteTagsController < ApplicationController
    def create
        note_tag = NoteTag.create(note_tag_params)
        note_tag.save
        render json: note_tag
    end

    def destroy
        note_tag = NoteTag.find(params[:id])
        note_tag.destroy
        render json: {message: 'deleted successfully'}
    end

    private
    def note_tag_params
        params.require(:note_tag).permit(:note_id, :tag_id)
    end
    
end