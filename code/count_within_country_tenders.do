** Set Working Directory
cd \
cd "Users\Jatupitpornchan_Phak\StataTutorial\"

use "data\derived\ted-columns.dta", clear

count 
* count witn-country tenders
count if iso_country_code == win_country_code
* count cross-country tenders
count if iso_country_code != win_country_code

* a better way
gen same_coutry = (iso_country_code == win_country_code)

* Get overview
tab same_coutry

* award value is very skewed with huge outliers, model log() instead
gen ln_award_value = log(award_value_euro)
reg ln_award_value same_coutry, robust

hist ln_award_value , by(same_coutry)
graph export "figure/value_histogram.pdf"