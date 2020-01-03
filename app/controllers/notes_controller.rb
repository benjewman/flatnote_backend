class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find(params[:id])
        render json: note, include: [:tags, :note_tags]
    end

    def create
        # note = Note.create(title: note_params[:title], content: note_params[:content], user_id: note_params[:user_id])
        note = Note.create(note_params)

        # note_params[:tagIds].each(id => note.tags << Tag.find(id))
        note.save
        render json: note
    end

    def update
        note = Note.find(params[:id])
        note.update(note_params)
        # empty note tags
        note.save
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: {message: 'successful delete'}
    end

    # def destroy
    #     puts 'sfdsdfsf99999999999sddf'
    #     render json: {foo: 'bar'}
    # end
    
    private
        def note_params
            params.require(:note).permit(:title, :content, :user_id)
        end
    
end
