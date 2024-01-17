insert into role (nom) values ('admin');
insert into role (nom) values ('etudiant');
insert into utilisateur ( email, mdp,est_victime) values ('admin@email.com','$2a$10$MJn5SDUCgsm3XEyvELGQI.lcCzCXtxhA8hunr9jX9yvDd6/FkjxYO',false);
-- mdp = pacourSup2023=super
insert into utilisateur (est_victime, mdp, nom, num_dossier, prenom) values (false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','vigna','050489','edith'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','milesi','15892','audrey'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','hourdeaux','58924','laurence'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','sequier','81547','catherine'),(false,'$2y$10$Hl/YRWK8.WsgLaoFPqSfB.JPHcRSsEzK1U3GCeC.lmUyS/kmDlTQS','bendib','84651','bahija'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','jules','87241','laurent'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','guillien','62456','yann'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','moulin','62456','timothée');
-- mdp = motdepassehypersecret2023!
insert into utilisateur (est_victime, code_secret, mdp, nom, num_dossier, prenom) values (true,'rjcpwh','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste1','57721','poste1'),(true,'ygrgjk','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste2','22754','poste2'),(true,'viking','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste3','97324','poste3'),(true,'daredevil','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste4','43013','poste4');
insert into utilisateur (est_victime, code_secret, mdp, nom, num_dossier, prenom) values (true,'jftmogh','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste5','59026','poste5'),(true,'ytrfyjx','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste6','72054','poste6'),(true,'asgard','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste7','17320','poste7'),(true,'murdock','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste8','66015','poste8');
insert into utilisateur_roles (roles_id, utilisateur_id) VALUES (1,1), (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17);

insert into etablissement (commune, departement, etab_uai, nom, region) VALUES ('Saint-Pierre','Saint-Pierre et Miquelon','14140ABA','Lycée Saint-Pierre','');

insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS en Stratégies Avancées de Contournement de Procrastination','BTS en Stratégies Avancées de Contournement de Procrastination','publics','presentiel','BTS - BTSA - BTSM');
insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS Gestion des Petits Enfants','BTS Gestion des Petits Enfants','publics','presentiel','BTS - BTSA - BTSM');
insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS Aide aux Grands-mères','BTS Aide aux Grands-mères','publics','presentiel','BTS - BTSA - BTSM');


insert into voeu (num_ordre, formation_id, utilisateur_id) VALUES (1,23129,10),(1,23130,11),(1,23128,12),(1,23128,13);
insert into voeu (num_ordre, formation_id, utilisateur_id) VALUES (1,23129,14),(1,23130,15),(1,23128,16),(1,23128,17);
insert into  voeu (num_ordre, formation_id, utilisateur_id) values (1,20379,1),(1,20379,2),(1,20379,3),(1,20379,4),(1,20379,5),(1,20379,6),(1,20379,7),(1,20379,8),(1,20379,9);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                          ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 10),
                                                                                          ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 10),
                                                                                          ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 10),
                                                                                          ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 10),
                                                                                          ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 10),
                                                                                          ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 10),
                                                                                          ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 10),
                                                                                          ( 'Changement du voeu n°1', 'Nouvelle formation = BTS Gestion des Petits Enfants, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 10);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 11),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 11),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 11),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 11),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 11),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 11),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 11),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS Aide aux Grands-mères, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 11);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 12),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 12),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 12),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 12),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 12),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 12),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 12),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS en Stratégies Avancées de Contournement de Procrastination, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 12);
INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 13),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 13),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 13),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 13),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 13),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 13),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 13),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS en Stratégies Avancées de Contournement de Procrastination, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 13);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 14),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 14),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 14),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 14),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 14),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 14),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 14),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS Gestion des Petits Enfants, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 14);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 15),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 15),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 15),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 15),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 15),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 15),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 15),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS Aide aux Grands-mères, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 15);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 16),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 16),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 16),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 16),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 16),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 16),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 16),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS en Stratégies Avancées de Contournement de Procrastination, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 16);

INSERT INTO log ( `action`, `detail`, `ip`, `log_date_time`, `utilisateur_id`) VALUES
                                                                                   ( 'Authentification réussie', '', '192.167.7.89', '2024-01-14 16:30:30.456351', 17),
                                                                                   ( 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.167.7.89', '2024-01-14 16:35:52.467318', 17),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:38.083412', 17),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:43.337181', 17),
                                                                                   ('Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:48.847701', 17),
                                                                                   ( 'Authentification échec', '', '172.17.200.2', '2024-01-17 23:02:58.976401', 17),
                                                                                   ( 'Authentification réussie', '', '172.17.200.2', '2024-01-17 23:03:03.206237', 17),
                                                                                   ( 'Changement du voeu n°1', 'Nouvelle formation = BTS en Stratégies Avancées de Contournement de Procrastination, Nouveau lieu = Lycée Saint-Pierre (Saint-Pierre)', '172.17.200.2', '2024-01-17 23:03:31.157276', 17);


