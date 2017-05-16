class RegionsController < InheritedResources::Base

def edit_region
	@region = Region.find(params[:id])
	render 'regions/edit_region'	
end
  private

    def region_params
      params.require(:region).permit(:region_name)
    end
end

