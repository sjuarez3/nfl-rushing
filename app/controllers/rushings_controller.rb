class RushingsController < ApplicationController

  def index
    (
    @filterrific = initialize_filterrific(
      Rushing,
      params[:filterrific],
      persistence_id: false,
      select_options: {
        sorted_by: Rushing.options_for_sorted_by,
      }
    )
    ) || return
    @rushings = @filterrific.find.page(params[:page])
    @filterrific.select_options = {
      sorted_by: Rushing.options_for_sorted_by
    }

    respond_to do |format|
      format.html
      format.js
      format.csv { send_data(Rushing.to_csv(@rushings), { filename: "rushing_#{params[:filterrific][:sorted_by]}.csv" }) }
    end
  end
end
