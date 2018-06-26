DROP DATABASE IF EXISTS rusch;
CREATE DATABASE rusch;

# NOTICE: only for development purpose
CREATE USER IF NOT EXISTS 'server'@'localhost';
GRANT ALL PRIVILEGES ON rusch.* To 'server'@'localhost' IDENTIFIED BY '123456';

USE rusch;

CREATE TABLE articles (
  id INT NOT NULL AUTO_INCREMENT,
  section varchar(64),
  title varchar(64),
  shortDescription varchar(1024),
  createdAt timestamp DEFAULT current_timestamp,
  hasStar varchar(64),
  tags varchar(512),
  content varchar(10024),
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE filters (
  id INT NOT NULL AUTO_INCREMENT,
  section varchar(64),
  filterTag varchar(64),
  createdAt timestamp DEFAULT current_timestamp,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE slides (
  id INT NOT NULL AUTO_INCREMENT,
  legend varchar(64),
  image varchar(255),
  createdAt timestamp DEFAULT current_timestamp,
    PRIMARY KEY (id)
) ENGINE=INNODB;


INSERT INTO slides (legend, image)
  VALUES ("Ceci est un chat", "http://lorempixel.com/output/cats-q-c-640-480-1.jpg" );

INSERT INTO slides (legend, image)
  VALUES ("Ceci est un chat", "http://lorempixel.com/output/cats-q-c-640-480-2.jpg" );  

INSERT INTO slides (legend, image)
  VALUES ("Ceci est un chapacontent", "http://lorempixel.com/output/cats-q-c-640-480-3.jpg" );


INSERT INTO filters (section, filterTag)
  VALUES ("LabRusch", 
  	"Design");

INSERT INTO filters (section, filterTag)
  VALUES ("LabRusch", 
  	"Innovation");

INSERT INTO filters (section, filterTag)
  VALUES ("LabRusch", 
  	"Urbanisme");

INSERT INTO filters (section, filterTag)
  VALUES ("LabRusch", 
  	"Social");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Mobilité");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Aménagement urbain");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Logements sociaux");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Programmation");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Services numériques");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Numérique");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Services urbains");

INSERT INTO filters (section, filterTag)
  VALUES ("Projets", 
  	"Études");


    

INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Lab", 
  	"Le design, un processus de conception urbaine", 
    "À quoi peut concrètement servir le design dans le domaine urbain ?", 
    "false",
    "Design",
    "En février 2017, Chartres Métropole inaugurait la première tranche de la future Cité de l’innovation, qui porte le nom du CM 101. Le premier lot offre déjà plus de 1150 m² de surface aménagées et accueille un incubateur (géré par le Centre Européen d’Entreprise et d’Innovation de la région Centre), 13 jeunes pousses, un espace de co-working, un espace de restauration, des salles de réunion et un mini Fablab. Ce projet nous tient particulièrement à cœur car nous revenons sur une de nos premières réalisations ! En 2016 Chartres Métropole nous avait missionné pour réunir les résidents, futurs résidents et partenaires de la Cité et réfléchir à la vision du site, sa forme, ses usages et fonctionnalités. L’ensemble du travail de co-construction avait été remis aux architectes pour intégrer les problématiques, besoins et idées dans la planification des futurs espaces. En découvrant les hangars transformés et donc le résultat des post-its remplis par des idées et des croquis, nous avons hâte d’y apporter une nouvelle touche de design de service ! A l’horizon 2019, la Cité de l’innovation représentera plus de 5100 m² avec l’ouverture de deux nouveaux bâtiments, capables d’accueillir un écosystème complet mettant en valeur l’innovation à 360°. C’est à dire, un environnement propice au développement de projets innovants des jeunes pousses, des étudiants, des chercheurs, des TPE/PME, des grandes entreprises; où chacun pourra interagir avec un réseau de professionnels, d’institutionnels et d’experts. Pour ses futurs locaux, Chartres Métropole a recensé auprès des résidents actuels et futurs, le besoin d’un accompagnement continu sur la communication et une aide en marketing. De ce constat, est née l’idée de proposer un « marketing lab ». Notre mission de cette année sera d’accompagner la définition, la co-conception et la mise en place d’un lieu de service marketing et communication au sein du CM101. En partenariat avec l’agence UZFUL, agence spécialisée en marketing engagé et avec la participation des résidents, futurs résidents, partenaires et acteurs ressources du territoire, nous rendrons tangible ce concept inédit.");

INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Lab", 
  	"Une nouvelle année, un nouveau projet à Chartres", 
    "Aménagement de la future Cité de l’innovation à Chartres", 
    "false",
    "Innovation",
    "Alors qu’il est identifié comme une pratique à but principalement esthétique, l’ampleur du design reste méconnue. Au croisement de nombreux enjeux, notamment techniques, artistiques et sociétaux, le design a toujours existé mais s’est construit en discipline à partir de la révolution industrielle. D’ailleurs, il est souvent, à tort, seulement associé au design industriel. Or, dans les années 20, l’école expérimentale du Bauhaus a fait émerger une pensée dite aujourd’hui “design” en confrontant les arts traditionnels (danse, peinture, etc.) à l’artisanat (métal, bois, textile, etc.). Une approche qui a profondément influencé le design industriel, mais aussi l’architecture moderne, en intégrant une démarche de conception qui intègre les usages. D’ailleurs, cela a contribué à faire évoluer le métier d’architecte vers celui de designer ! Le design s’applique aujourd’hui dans des domaines variés : design social, design de services, design global, … En France, le design était déjà très présent dans la conception urbaine, mais principalement par le prisme du mobilier urbain. Depuis quelques années, grâce à l’innovation sociale inspirée des pays nordiques, le design est venu s’imprégner dans le paysage urbain pour donner un sens plus humain aux services et aux mobiliers, mais aussi repenser les relations entre politiques publiques et citoyens, pour davantage de co-conception et de liens entre des parties prenantes. Mais à quoi le design sert-il concrètement ? Le design, c’est d’abord concevoir des produits, des services, des systèmes et des espaces, mais cela peut aussi améliorer l’existant (outil ou service) dans le but de rendre son usage le plus simple possible. Dans les deux cas, l’objectif est donc de résoudre des problèmes en apportant des solutions nouvelles et innovantes pour répondre aux besoins précis des usagers  ! Le design n’est pas seulement élaborer des objets aux formes élégantes. Non, le design veut dire “conception” et il se trouve donc partout ! Quand on étudiait l’emplacement des anses sur un vase antique, c’était déjà une réflexion proche du design puisqu’on s’appuyait sur l’usage. Réfléchir à l’optimisation d’un site internet ou d’une application en intégrant l’expérience des utilisateurs, c’est aussi du design. Ils s’agit de concevoir et d’améliorer, en adoptant une méthodologie, une manière de penser qui passe par différentes étapes clés : compatir, définir, imaginer, synthétiser, prototyper, tester, dans une amélioration continue laissant un droit à l’erreur. Ainsi, les designers sont partout : dans les médias, les laboratoires, les hôpitaux, les entreprises, les gouvernements. Là où il y a des usages et des interactions, de la conception, il y a du design !");

INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Lab",
    "Du renouvellement Urbain Participatif à Neuilly-sur-Marne",
    "Exploration des méthodes du design appliquées aux projets urbains",
    "false",
    "Social",
    "L’Atelier Rusch continue à explorer les méthodes du design appliquées aux projets urbains. En juin dernier, nous avons remporté notre premier appel d’offre d’assistance à maîtrise d’usage dans le cadre du Nouveau Programme de Renouvellement Urbain (NPRU), en partenariat avec FORS Recherche Sociale et Rouge Vif Territoires ! Le projet s’intéresse aux problématiques socio-urbaines du quartier des Bouleaux à Neuilly-sur-Marne pour le Bailleur ICF-La Sablière. L’enjeu de cette deuxième vague de NPRU est de conduire un certain nombre d’études urbaines et sociales et d’associer le plus possible la population dans la préparation du projet urbain. ICF La Sablière participe à la dynamique d’intégration du design dans le cadre des projets de développements urbains en choisissant un groupement d’un nouveau genre entre design et urbanisme. Un nouveau genre ? Oui, car il est encore assez rare de voir des designers agir dans le cadre de ces projets. On y croise plus facilement des sociologues, urbanistes, architectes et géographes. Quel est donc le rôle d’une agence de design dans les politiques de rénovation urbaines ? Dans la mise en œuvre de leurs projets, les bailleurs et les collectivités associent de plus en plus une diversité de parties prenantes. La concertation citoyenne n’est pas nouvelle. L’enjeu d’aller plus loin que la simple concertation et de réussir à intégrer tous les points de vues, besoins et objections dans une dynamique positive et constructive est récent par contre. Il s’agit donc de dépasser ses intérêts individuels et de participer à un projet collectif. C’est pour cela que nous proposons d’introduire le travail « d’assistant à maîtrise d’usage », c’est à dire celui qui va assurer le lien entre les usagers, la maîtrise d’ouvrage et la maîtrise d’œuvre. Le designer, spécialiste dans la notion d’usage et la traduction tangible de ses besoins et attentes en scénarios, peut favoriser le dialogue et l’acceptabilité du projet. Par la conception d’outils d’aide à la participation et le prototypage des idées, le dialogue se construit sur une base plus positive et plus rapide. Chacun se place dans une posture d’expert d’usage avec une expérience qui lui est propre. Le rôle des participants n’est pas écrasé par les « sachant » mais intégrés dans un projet commun. C’est dans cet objectif de co-construction du projet et de participation des habitants que nous agissons. La particularité de ce projet est qu’ICF La Sablière souhaite associer les forces vives du quartier et ses locataires dans la construction d’un lieu central de vie citoyenne dédié à un meilleur accueil des locataires mais aussi à l’implantation d’un lieu ouvert aux activités sociales, pédagogiques et récréatives. L’enjeu est de bien comprendre des besoins et les services pour répondre aux besoins des habitants et problématiques locales."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Lab",
    "Massy : ce nouveau square a été construit avec les habitants",
    "Exploration des méthodes du design appliquées aux projets urbains",
    "false",
    "Social Urbanisme",
    "L’Atelier Rusch continue à explorer les méthodes du design appliquées aux projets urbains. En juin dernier, nous avons remporté notre premier appel d’offre d’assistance à maîtrise d’usage dans le cadre du Nouveau Programme de Renouvellement Urbain (NPRU), en partenariat avec FORS Recherche Sociale et Rouge Vif Territoires ! Le projet s’intéresse aux problématiques socio-urbaines du quartier des Bouleaux à Neuilly-sur-Marne pour le Bailleur ICF-La Sablière. L’enjeu de cette deuxième vague de NPRU est de conduire un certain nombre d’études urbaines et sociales et d’associer le plus possible la population dans la préparation du projet urbain. ICF La Sablière participe à la dynamique d’intégration du design dans le cadre des projets de développements urbains en choisissant un groupement d’un nouveau genre entre design et urbanisme. Un nouveau genre ? Oui, car il est encore assez rare de voir des designers agir dans le cadre de ces projets. On y croise plus facilement des sociologues, urbanistes, architectes et géographes. Quel est donc le rôle d’une agence de design dans les politiques de rénovation urbaines ? Dans la mise en œuvre de leurs projets, les bailleurs et les collectivités associent de plus en plus une diversité de parties prenantes. La concertation citoyenne n’est pas nouvelle. L’enjeu d’aller plus loin que la simple concertation et de réussir à intégrer tous les points de vues, besoins et objections dans une dynamique positive et constructive est récent par contre. Il s’agit donc de dépasser ses intérêts individuels et de participer à un projet collectif. C’est pour cela que nous proposons d’introduire le travail « d’assistant à maîtrise d’usage », c’est à dire celui qui va assurer le lien entre les usagers, la maîtrise d’ouvrage et la maîtrise d’œuvre. Le designer, spécialiste dans la notion d’usage et la traduction tangible de ses besoins et attentes en scénarios, peut favoriser le dialogue et l’acceptabilité du projet. Par la conception d’outils d’aide à la participation et le prototypage des idées, le dialogue se construit sur une base plus positive et plus rapide. Chacun se place dans une posture d’expert d’usage avec une expérience qui lui est propre. Le rôle des participants n’est pas écrasé par les « sachant » mais intégrés dans un projet commun. C’est dans cet objectif de co-construction du projet et de participation des habitants que nous agissons. La particularité de ce projet est qu’ICF La Sablière souhaite associer les forces vives du quartier et ses locataires dans la construction d’un lieu central de vie citoyenne dédié à un meilleur accueil des locataires mais aussi à l’implantation d’un lieu ouvert aux activités sociales, pédagogiques et récréatives. L’enjeu est de bien comprendre des besoins et les services pour répondre aux besoins des habitants et problématiques locales."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Projet",
    "Atelier de co-construction Mobilité",
    "Élaboration de dispositifs Mobilité pour PNR de la Haute Vallée de Chevreuse",
    "false",
    "Mobilité",
    "Objectif : Réunir élus, techniciens et acteurs de la mobilité en atelier de co-construction pour imaginer des solutions de mobilités alternatives sur le territoire du PNR de la Haute Vallée de Chevreuse."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Projet",
    "Chantier participatif",
    "Aménagement urbain du square de Grenoble à Massy",
    "false",
    "Mobilité",
    "Objectif : Mobiliser, encadrer et animer des chantiers ouverts pour le réaménagement et la réappropriation d’un square en cœur d’îlot de quartier politique de la ville, Massy Opéra. \n Chantiers Participatifs : Suite aux ateliers participatifs, un projet co-construit par les habitants et les locataires a été validé pour passer en phase de construction. Le chantier s’est déroulé de février à mai 2017. Sur plusieurs journées de chantier, les locataires, habitants petits et grands, motivés et impliqués dans le projet se sont réunis pour bécher, desherber, contruire, peindre, semer, planter… Le Square a été inauguré le 23 mai en fanfare et en couleur."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "false",
    "Logements sociaux",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Projet",
    "Chantier participatif",
    "Aménagement urbain du square de Grenoble à Massy",
    "false",
    "Logements sociaux",
    "Objectif : Mobiliser, encadrer et animer des chantiers ouverts pour le réaménagement et la réappropriation d’un square en cœur d’îlot de quartier politique de la ville, Massy Opéra. \n Chantiers Participatifs : Suite aux ateliers participatifs, un projet co-construit par les habitants et les locataires a été validé pour passer en phase de construction. Le chantier s’est déroulé de février à mai 2017. Sur plusieurs journées de chantier, les locataires, habitants petits et grands, motivés et impliqués dans le projet se sont réunis pour bécher, desherber, contruire, peindre, semer, planter… Le Square a été inauguré le 23 mai en fanfare et en couleur."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES ("Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "true",
    "Aménagement urbain",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Chantier participatif",
    "Aménagement urbain du square de Grenoble à Massy",
    "false",
    "Aménagement urbain",
    "Objectif : Mobiliser, encadrer et animer des chantiers ouverts pour le réaménagement et la réappropriation d’un square en cœur d’îlot de quartier politique de la ville, Massy Opéra. \n Chantiers Participatifs : Suite aux ateliers participatifs, un projet co-construit par les habitants et les locataires a été validé pour passer en phase de construction. Le chantier s’est déroulé de février à mai 2017. Sur plusieurs journées de chantier, les locataires, habitants petits et grands, motivés et impliqués dans le projet se sont réunis pour bécher, desherber, contruire, peindre, semer, planter… Le Square a été inauguré le 23 mai en fanfare et en couleur."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "false",
    "Programmation",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Chantier participatif",
    "Aménagement urbain du square de Grenoble à Massy",
    "true",
    "Programmation Numérique",
    "Objectif : Mobiliser, encadrer et animer des chantiers ouverts pour le réaménagement et la réappropriation d’un square en cœur d’îlot de quartier politique de la ville, Massy Opéra. \n Chantiers Participatifs : Suite aux ateliers participatifs, un projet co-construit par les habitants et les locataires a été validé pour passer en phase de construction. Le chantier s’est déroulé de février à mai 2017. Sur plusieurs journées de chantier, les locataires, habitants petits et grands, motivés et impliqués dans le projet se sont réunis pour bécher, desherber, contruire, peindre, semer, planter… Le Square a été inauguré le 23 mai en fanfare et en couleur."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "false",
    "Services numériques",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "false",
    "Services numériques",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Chantier participatif",
    "Aménagement urbain du square de Grenoble à Massy",
    "false",
    "Numérique",
    "Objectif : Mobiliser, encadrer et animer des chantiers ouverts pour le réaménagement et la réappropriation d’un square en cœur d’îlot de quartier politique de la ville, Massy Opéra. \n Chantiers Participatifs : Suite aux ateliers participatifs, un projet co-construit par les habitants et les locataires a été validé pour passer en phase de construction. Le chantier s’est déroulé de février à mai 2017. Sur plusieurs journées de chantier, les locataires, habitants petits et grands, motivés et impliqués dans le projet se sont réunis pour bécher, desherber, contruire, peindre, semer, planter… Le Square a été inauguré le 23 mai en fanfare et en couleur."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "false",
    "Numérique Études",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
  VALUES (
    "Projet",
    "Chantier participatif",
    "Aménagement urbain du square de Grenoble à Massy",
    "false",
    "Services urbains",
    "Objectif : Mobiliser, encadrer et animer des chantiers ouverts pour le réaménagement et la réappropriation d’un square en cœur d’îlot de quartier politique de la ville, Massy Opéra. \n Chantiers Participatifs : Suite aux ateliers participatifs, un projet co-construit par les habitants et les locataires a été validé pour passer en phase de construction. Le chantier s’est déroulé de février à mai 2017. Sur plusieurs journées de chantier, les locataires, habitants petits et grands, motivés et impliqués dans le projet se sont réunis pour bécher, desherber, contruire, peindre, semer, planter… Le Square a été inauguré le 23 mai en fanfare et en couleur."
  );
  INSERT INTO articles (section, title, shortDescription, hasStar, tags, content)
    VALUES (
    "Projet",
    "Conception participative d’espace",
    "Atelier participatif d'aménagement du square de Grenoble à Massy",
    "true",
    "Études",
    "Objectif : réaménager deux squares en cœur d’îlot dans le quartier politique de la ville, Massy Opéra, dans une démarche participative en co-construction avec les acteurs et habitants du quartier."
  );
