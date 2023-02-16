** Set Working Directory
cd \
cd "Users\Jatupitpornchan_Phak\StataTutorial\"

use "data\derived\ted-columns.dta", clear

count 
* count witn-country tenders
count if iso_country_code == win_country_code
* count cross-country tenders
count if iso_country_code != win_country_code

* create dummy var
generate same_coutry = 0
replace same_coutry = 1 if iso_country_code == win_country_code

* Get overview
tab same_coutry
