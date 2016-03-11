news=('entreprenariat' 'formationEnCours' 'conferences' 'publications' 'historiqueEmploi' 'experienceFormation' 'experienceAnimation' 'experienceGestion')
for new in ${news[@]}; do
   touch $new.mustache
done
