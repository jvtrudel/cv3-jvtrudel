# lancer le calcul dans repertoire tests

units=('publications')
# 'travail' 'conferences')
data="../data"
templates="../templates/tests"
output="unitsResults"

tmp=tmp.md
echo "" > $tmp
for unit in ${units[@]}; do
  mustache $data/$unit.yml $templates/$unit.mustache > $unit.md
  cat $unit.md >> $tmp
  cp $unit.md $output/$unit.md
  pandoc -s $output/$unit.md -o $output/$unit.html
done

pandoc -s $tmp -o $output/all.html
mv $tmp $output/all.md
