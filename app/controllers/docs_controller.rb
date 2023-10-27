class DocsController < ApplicationController
    before_action :find_doc, only: [:show, :edit, :update, :destroy]

    def index
        # The @docs in index.html.erb are defined below in order of when they were created
        @docs= Doc.all.order("created_at DESC")
    end

    def show            # find doc
    end

    def new
        @doc = Doc.new
    end

    def create      # create does not have a view
        @doc = Doc.new(doc_params)  # docs params are the document title and content

        if @doc.save
            redirect_to @doc        # if yes then redirect to that document that we just created
        else
            render 'new'            # else render the new file, gives a chance to recreate the document
        end
    end

    def edit            # find doc
    end

    def update      # update does not have a view
        if @doc.update(doc_params)
            redirect_to @doc        # find doc, then if the document is updated, it will save those chnages and redirect to that document
        else
            render 'edit'           # else render the edit page (Redirect is new HTTP request but rendering gives you chance to change and save again)
        end
    end

    def destroy
        @doc.destroy
        redirect_to docs_path       # find doc, then redirect to the index page
    end

    # private methods used with above actions
    private

        def find_doc
            @doc = Doc.find(params[:id])    # find the document by the id, then display the title and content of that document
        end

        def doc_params
            params.require(:doc).permit(:title, :content)   # referring to the doc model
        end
end
