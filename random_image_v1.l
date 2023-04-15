require "os"
require "table"

--set input argument
if #arg == 0 then
	time_waiting = 60*5
else
	time_waiting = tonumber(arg[1])
end

--config variable
cmd_image = '`find ~/Images -type f | shuf -n 1`'
cmd_load_image = 'swaymsg output "*" bg '
cmd= cmd_load_image .. cmd_image .. ' fit'

--sleep functon
function sleep(time_in_second)
	st_time = os.clock()
	while os.clock() - st_time <= time_in_second do end
end

--main function for changing background
while (true)
	do
		os.execute(cmd)
		sleep(time_waiting)
	end


