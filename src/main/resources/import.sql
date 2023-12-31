insert into role (nom) values ('admin');
insert into role (nom) values ('joueur');
insert into utilisateur ( email, mdp,est_victime) values ('admin@email.com','$2a$10$MJn5SDUCgsm3XEyvELGQI.lcCzCXtxhA8hunr9jX9yvDd6/FkjxYO',false);
-- mdp = pacoursup2023=super
insert into utilisateur (est_victime, mdp, nom, num_dossier, prenom) values (false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','vigna','050489','edith'),(false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','milesi','15892','audrey'),(false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','hourdeaux','58924','laurence'),(false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','sequier','81547','catherine'),(false,'$2y$10$Hl/YRWK8.WsgLaoFPqSfB.JPHcRSsEzK1U3GCeC.lmUyS/kmDlTQS','bendib','84651','bahija'),(false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','jules','87241','laurent'),(false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','guillien','62456','yann'),(false,'$2y$10$MksieoAFllo22OxzzxQHSudksZZJTSFCVogIeTnuT4GGdC6s1M7ha','moulin','62456','timothée');
-- mdp = motdepassehypersecret2023!
insert into utilisateur (est_victime, code_secret, mdp, nom, num_dossier, prenom) values (true,'mystere1','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','fraioli','57721','stephane'),(true,'mystere2','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','anelka','22754','francine'),(true,'mystere3','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','varni','57721','frédéric');
insert into utilisateur_roles (roles_id, utilisateur_id) VALUES (1,1), (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12);

insert into etablissement (commune, departement, etab_uai, nom, region) VALUES ('Saint-Pierre','Saint-Pierre et Miquelon','14140ABA','Lycée Saint-Pierre','');

insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS en Stratégies Avancées de Contournement de Procrastination','BTS en Stratégies Avancées de Contournement de Procrastination','publics','presentiel','BTS - BTSA - BTSM')
insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS Gestion des Petits Enfants','BTS Gestion des Petits Enfants','publics','presentiel','BTS - BTSA - BTSM');
insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS Aide aux Grands-mères','BTS Aide aux Grands-mères','publics','presentiel','BTS - BTSA - BTSM');

insert into voeu (num_ordre, formation_id, utilisateur_id) VALUES (1,23129,10),(1,23130,11),(1,23128,12);
insert into  voeu (num_ordre, formation_id, utilisateur_id) values (1,20379,1),(1,20379,2),(1,20379,3),(1,20379,4),(1,20379,5),(1,20379,6),(1,20379,7),(1,20379,8),(1,20379,9);