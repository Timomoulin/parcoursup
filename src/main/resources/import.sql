insert into role (nom) values ('admin');
insert into role (nom) values ('joueur');
insert into utilisateur ( email, mdp) values ('admin@email.com','$2a$10$MJn5SDUCgsm3XEyvELGQI.lcCzCXtxhA8hunr9jX9yvDd6/FkjxYO');
insert into utilisateur_roles (roles_id, utilisateur_id) VALUES (1,1), (2,1);
