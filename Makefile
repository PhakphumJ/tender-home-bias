# Makefiles contain scripts that will be executed line by line
# But they can also be used to organize what command gets executed when.
## use command make to run a makefile
# e.g. make --makefile Makefile
# or make --file Makefile
# or just run make 

# target (what I want to make): source1 source2 (These are files on my computer, ingredients)
# <TAB>recipe step 1
# <TAB>recipe step 2
# We apply the recipe to our ingredients.


# Extract some columns (and also make the directory as well)
data/derived/ted-columns.csv: data/raw/european-commission/ted-sample.csv
	mkdir -p data/derived
	csvcut -c ID_NOTICE_CAN,ISO_COUNTRY_CODE,WIN_COUNTRY_CODE,AWARD_VALUE_EURO data/raw/european-commission/ted-sample.csv > data/derived/ted-columns.csv

# In this case, we don't have ingredients but it's from the internet.
data/raw/european-commission/ted-sample.csv:
	mkdir -p data/raw/european-commission
	curl -Lo data/raw/european-commission/ted-sample.csv "https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/ted-sample.csv"

## It knows that we need tem-sample so it downloaded ted-sample before we use csvcut.


