insert into role (nom) values ('admin');
insert into role (nom) values ('etudiant');
insert into utilisateur ( email, mdp,est_victime) values ('admin@email.com','$2a$10$MJn5SDUCgsm3XEyvELGQI.lcCzCXtxhA8hunr9jX9yvDd6/FkjxYO',false);
-- mdp = pacourSup2023=super
insert into utilisateur (est_victime, mdp, nom, num_dossier, prenom) values (false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','vigna','050489','edith'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','milesi','15892','audrey'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','hourdeaux','58924','laurence'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','sequier','81547','catherine'),(false,'$2y$10$Hl/YRWK8.WsgLaoFPqSfB.JPHcRSsEzK1U3GCeC.lmUyS/kmDlTQS','bendib','84651','bahija'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','jules','87241','laurent'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','guillien','62456','yann'),(false,'$2y$10$DZsKQfsp4gfnmG2z.FTLRejYSaoZlBt7wOoEeuafqcHa4yAItc1c2','moulin','62906','timothée');
-- mdp = motdepassehypersecret2023!
insert into utilisateur (est_victime, code_secret, mdp, nom, num_dossier, prenom) values (true,'rjcpwh','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste1','57721','poste1'),(true,'ygrgjk','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste2','22754','poste2'),(true,'viking','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste3','97324','poste3'),(true,'dardevil','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste4','43013','poste4');
insert into utilisateur (est_victime, code_secret, mdp, nom, num_dossier, prenom) values (true,'jftmogh','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste5','59026','poste5'),(true,'ytrfyjx','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste6','72054','poste6'),(true,'asgard','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste7','17320','poste7'),(true,'murdock','$2y$10$7oyvjE1esYgl.062Mph8cepT9/hFq5EY2tf5hxBt3b/KZIP2xCITG','poste8','66015','poste8');

-- mdp = pacourSup2023=super
insert into utilisateur (est_victime, mdp, nom, num_dossier, prenom) values (false,'$2y$10$.q75LwWjeW1qjBnY/tYBcumTX9I5qF5if8RLHhOt4oNlTu4aGO6.i','vigna','11451','edith'),(false,'$2y$10$2pq0CHnjuxYAeIFA7xs4feDQ3CP8ufz2mbppH8OGMrgzrnieO5dNu','milesi','14121','audrey'),(false,'$2y$10$lao1RKU2IozgoSYoiQrxU.KM131b7ctXjnQO32j7zAR74IkaFvTR.','hourdeaux','20459','laurence'),(false,'$2y$10$hiPHmI97dIx8WiFDYH/Z7uS0hfinoRCV24l5QrGJ3BIe.Nz0sTKEm','sequier','29054','catherine'),(false,'$2y$10$GE9xao9Ye8WWhqxw0MC3OeE.g3.Bxlm4kErYmhjZrpiItrFvZ5WTa','bendib','30489','bahija'),(false,'$2y$10$CRSUyOlQmZwAVZ0.k94c8u1X4OS4YdIcgZzsOlANlJLvI.LYfZ0aO','jules','32054','laurent'),(false,'$2y$10$mhgX/AsheNuBLB89f9lfAO8XKWrPD/Xxnn51s8gzZ7xzfZXiHseVO','guillien','40891','yann'),(false,'$2y$10$9DHeAcPWNfw6oUsFiKcc4OwFdfJmK86FxXddi8uV3znLdR9BGUJCu','moulin','49147','timothée');

insert into utilisateur (est_victime, mdp, nom, num_dossier, prenom) values (false,'$2y$10$Pty3uQo9iDoMHn2p6vYteuNFTUvR/QeVEQQ4ehFdllN7WAhXS611i','vigna','51025','edith'),(false,'$2y$10$vWPIjMdxb.1VbbQicRnbpONOfdHcrwOtjPU8hUi0zFb4FNnQragxW','milesi','53751','audrey'),(false,'$2y$10$xemIgPp7OxBF5yxcDX9IZOhvqJZa5srCm4Q9MBv3QN3Oj34OhOctu','hourdeaux','54902','laurence'),(false,'$2y$10$hr1Z27gt.jRyNv05Dw8A9.ytp6zIBOp/et9kVRDNDUHTYxgL7hYrK','sequier','55282','catherine'),(false,'$2y$10$PdV.R4Q.U.IFWyh3IQIHIOV8CJIQpkZ8QuLiCD0aIDxDdtsXDJtW.','bendib','62038','bahija'),(false,'$2y$10$jgalglqBLOij75MMCeFhGueqDJfcVydtUZ2FX7JvjZhEt82nbi1lG','jules','62742','laurent'),(false,'$2y$10$k19VicrQwcHM9EyWMy.HD.mOsK24rYiO3OiCeD0mbpctPqk3WOvUK','guillien','63072','yann'),(false,'$2y$10$PyomW5pLbipXBnhafIj8WOXyNM6i1ZQc5lczDfy3fsNQGeb8cCerC','moulin','67752','timothée'),(false,'$2y$10$FVbcEFvCNPv8II7tg0/r5uCyQG9laPGX/3Yic/B7HU5QwXaqmRRuu','moulin','71852','timothée');
insert into utilisateur_roles (roles_id, utilisateur_id) VALUES (1,1), (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34);

insert into etablissement (commune, departement, etab_uai, nom, region) VALUES ('Saint-Pierre','Saint-Pierre et Miquelon','14140ABA','Lycée Saint-Pierre','');

insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS en Stratégies Avancées de Contournement de Procrastination','BTS en Stratégies Avancées de Contournement de Procrastination','publics','presentiel','BTS - BTSA - BTSM');
insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS Gestion des Petits Enfants','BTS Gestion des Petits Enfants','publics','presentiel','BTS - BTSA - BTSM');
insert into formation (etablisement_id, filliere, nm, type_contrat, type_enseignement, type_formation) VALUES (5956,'BTS Aide aux Grands-mères','BTS Aide aux Grands-mères','publics','presentiel','BTS - BTSA - BTSM');


insert into voeu (num_ordre, formation_id, utilisateur_id) VALUES (1,23129,10),(1,23130,11),(1,23128,12),(1,23128,13);
insert into voeu (num_ordre, formation_id, utilisateur_id) VALUES (1,23129,14),(1,23130,15),(1,23128,16),(1,23128,17);
insert into  voeu (num_ordre, formation_id, utilisateur_id) values (1,20379,1),(1,20379,2),(1,20379,3),(1,20379,4),(1,20379,5),(1,20379,6),(1,20379,7),(1,20379,8),(1,20379,9),(1,20379,18),(1,20379,19),(1,20379,20),(1,20379,21),(1,20379,22),(1,20379,23),(1,20379,24),(1,20379,25);
insert into  voeu (num_ordre, formation_id, utilisateur_id) values (1,20379,26),(1,20379,27),(1,20379,28),(1,20379,29),(1,20379,30),(1,20379,31),(1,20379,32),(1,20379,33),(1,20379,34);

INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 2, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 2, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 2, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 3, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 3, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 3, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 4, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 4, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 4, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 5, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 5, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 5, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 6, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 6, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 6, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 6, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 6, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 6, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 7, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 7, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 7, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 8, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 8, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 8, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 9, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 9, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 9, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 18, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 18, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 18, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 19, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 19, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 19, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 20, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 20, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 20, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 21, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 21, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 21, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 22, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 22, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 22, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 23, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 23, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 23, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 24, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 24, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 24, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
INSERT INTO `log` ( `log_date_time`, `utilisateur_id`, `action`, `detail`, `ip`) VALUES
( '2024-01-01 07:00:22.715085', 25, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:04:26.718354', 25, 'Authentification réussie', '', '192.168.1.1'),
( '2024-01-14 07:06:42.610051', 25, 'Ajout d\'un nouveau voeu (voeu n°1', 'Formation = BTS SIO - Services informatiques aux organisations, Lieu = Lycée Leonard De Vinci (Melun - 77) (Melun)', '192.168.1.1');
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


