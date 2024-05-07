categories=("Music" "Entertainment" "Gaming" "Comedy")

for category in "${categories[@]}"; do

    awk -F ',' -v cat="$category" '$8 == "United States" && $5 == cat { print $0 > cat".txt" }' "Global YouTube Statistics.csv"
done

wc -l Music.txt Entertainment.txt Gaming.txt Comedy.txt > ws5.txt
