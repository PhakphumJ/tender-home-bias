use "data\derived\ted-columns.dta", clear

count 
*
count if iso_country_code == win_country_code
count if iso_country_code != win_country_code
