		require 'sinatra'
		require 'holidapi'


		class HolidayApp < Sinatra::Base
			get '/' do
					@holidays = HolidApi.get(country:'US', year: Time.now.year, month: Time.now.month)
				erb :index
			end
		end
