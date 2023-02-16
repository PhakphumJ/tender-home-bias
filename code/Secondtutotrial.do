cd \
cd "Users\Jatupitpornchan_Phak\StataTutorial\"

ls "data/raw/ted/ted-sample.csv"
import delimited "data/raw/ted/ted-sample.csv", clear
keep iso_country_code win_country_code award_value_euro

count 

count if win_country_code == "PL"

display strlen("ab")

browse if strlen(win_country_code) > 2

count if award_value_euro < 500

browse if award_value_euro  < 500

replace award_value_euro = 500 if award_value_euro < 500

* drop obs with multiple winners
drop if strlen(win_country_code) > 2

* drop those without winner or missing buyer
drop if missing(win_country_code, iso_country_code)

* Save file
save "data\derived\ted-columns.dta", replace