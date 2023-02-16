** Set Working Directory
cd \
cd "Users\Jatupitpornchan_Phak\StataTutorial\"

** Download Data
copy "https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/ted-sample.csv" "data/raw/ted/ted-sample.csv", replace

** Show that I downloaded.
ls "data/raw/ted/"

** Import Data
import delimited "data/raw/ted/ted-sample.csv"

** Select Column
keep iso_country_code win_country_code award_value_euro

** Save as a new dta
save "data/derived/ted-columns.dta"
