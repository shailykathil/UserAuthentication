class NodesController < InheritedResources::Base

def edit_node
	@node = Node.find(params[:id])
	render 'nodes/edit_node'
end

  private

    def node_params
      params.require(:node).permit(:node_name, :place_id)
    end
end

