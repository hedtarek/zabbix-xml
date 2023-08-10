# zabbix-xml
Ce Code facilite l'insertion massive des hosts au sein de zabbix via un fichier .csv (hosts.csv) et un script xml généré automatiquement (import.xml)

- Le fichier .csv contient uniquement deux colonnes nom;IP
- Le fichier Template.xml represente le template qui sera appliqué sur les hosts , on suppose que les machines sont tous de type linux ( elles auront comme modèle Linux by Zabbix agent ) et seront membres du groupe Device/OS/Linux
- Le fichier host.xml est la déclaration xml type qui sera appliquée n fois (en fonction du nombre d'hosts à rajouter)
- En enfin le scrip create-import.sh sera le moteur qui va générer le fichier import.xml qui sera inséré dans zabbix ( il s'agit de quelques actions de traitement de données )
