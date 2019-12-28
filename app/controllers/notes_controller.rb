class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find(params[:id])
        render json: note, include: [:tags]
    end

    def create
        note = Note.create(note_params)
        note.save
        render json: note
    end

    # def update
    #     note = Note.find(params[:id])

    # end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: {message: 'successful delete'}
    end

    private
        def note_params
            params.require(:note).permit(:title, :content, :user_id)
        end
    
end
