class DocsController < ApplicationController

    def index
    end

    def show
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

    def edit
    end

    def update      # update does not have a view
    end

    def destroy
    end

    # private methods used with above actions
    private

        def find_doc
        end

        def doc_params
            params.require(:doc).permit(:title, :content)   # referring to the doc model
        end
end
