# FREEDOC

Nous allons faire conccurence à Doctolib !

Dans cet exercice, il nous a été demandé: 
 - Créer un model Patient
 - Créer un model Docteur
 - Créer un model Rendez-vous
 - de tester tout cela en créant des docteurs, des patients et des rendez-vous, en sachant qu'au niveau relationnel:
 Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.

 - Ensuite, nous avons eu à rajouter un model Ville, 
 et de les lier en sachant que chaque docteur, patient, et rendez-vous est lié à une city. Une city peut avoir plusieurs docteurs, patients, et rendez-vous.
 - nous avons du supprimer la colonne spécialités pour les docteurs, et créer un modèle spécialité en sachant que un docteur aurait plusieurs specialty (DEAL_WITH_IT), et une specialty pourrait concerner plusieurs doctor.

 ## Afin de pouvoir le tester, ne pas oublier de faire un:

 ``
bundle install
``

 # MERCI DE TA VISITE
 