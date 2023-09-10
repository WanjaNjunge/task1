class ApiController < ApplicationController
    def get_info
        slack_name = params[:slack_name] || 'Stephanie' 
        track = params[:track] || 'backend' 

    current_day = Time.now.strftime('%A')
    current_time = Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')

    response = {
        slack_name: slack_name,
        current_day: current_day,
        utc_time: current_time,
        track: track,
        github_file_url: 'https://github.com/WanjaNjunge/task1/blob/main/app/controllers/api_controller.rb',
        github_repo_url: 'https://github.com/WanjaNjunge/task1',
        status_code: 200
    }

    render json: response
end
end
