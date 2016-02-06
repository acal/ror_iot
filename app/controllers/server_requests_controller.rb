class ServerRequestsController < ApplicationController
  def server_post
    if params[:reading].present? && !params[:reading].nil?
      readings = params[:reading]
      readings = readings.split(",")

      readings.each do |e|
        axis = e.split(" ").map { |t| t.to_f }
        new_reading = Reading.new
        new_reading.axis_x = axis[0]
        new_reading.axis_y = axis[1]
        new_reading.axis_z = axis[2]
        new_reading.save
      end
    end

    render nothing: true
  end
end