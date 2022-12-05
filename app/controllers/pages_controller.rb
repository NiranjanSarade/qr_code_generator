class PagesController < ApplicationController
  def qr_code_generator; end

  def qr_code_download
    # disposition: inline for displaying, attachment for download
    #send_data RQRCode::QRCode.new(params[:content].to_s).as_png(size: 300), type: 'image/png', disposition: 'attachment'

    @svg = RQRCode::QRCode.new(params[:content].to_s).as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6
      )
  end
end