source ./config.ini

while true 
do
	wget -q -O - "http://pogoda.yandex.by/minsk/" | grep -Po "(?<=<div class=\"current-weather__thermometer current-weather__thermometer_type_now\">).*?(?=</div>)"
	sleep $time
	echo 'next cycle...'
done