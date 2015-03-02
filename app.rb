		require 'sinatra'
		require 'holidapi'


		class HolidayApp < Sinatra::Base
			get '/' do
					@holidays = HolidApi.get(
						country:'US',
						month: params['month'] || Time.now.month,
						day: params['day'] || Time.now.day,
						year: params['year'] || Time.now.year

					)
				erb :index
			end
		end
