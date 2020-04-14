/* PLAN_URGENCE V1.0 */
/* Creation de la structure des données (schéma, tables, séquences, triggers,...) */
/* plan_urgence_10_structure.sql */
/* PostgreSQL/PostGIS */
/* Conseil régional Nouvelle-Aquitaine - https://cartographie.nouvelle-aquitaine.fr/ */
/* Auteur : Tony VINCENT */


------------------------------------------------------------------------ 
-- Tables : Création des tables
------------------------------------------------------------------------

------------------------------------------------------------------------
-- Table: met_plan_urgence.m_plan_urgence_na_geo

-- DROP TABLE met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo;
CREATE TABLE met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo
(
	id serial NOT NULL,
	site_code character varying(15),
	site_nom character varying(255),
	adresse character varying(255),
	numcom character varying(5),
	nomcom character varying(255),
	code_postal character varying(5),
	site_nom_contact_tel character varying(14),
	site_nom_contact_mail character varying(255),
	caract_site_hebergement boolean DEFAULT false,
	caract_site_hebergement_acces_nuit boolean,
	caract_site_hebergement_desc character varying(255),
	caract_site_hebergement_horaire character varying(255),
	caract_site_hebergement_contact_tel character varying(14),
	caract_site_hebergement_contact_mail character varying(255),
	caract_site_hebergement_transport_centre_hospitalier boolean DEFAULT false,
	caract_site_hebergement_transport_centre_hospitalier_desc text,
	caract_site_hebergement_commentaire text,
	caract_site_restaurant boolean DEFAULT false,
	caract_site_restaurant_acces_nuit boolean,
	caract_site_restaurant_desc character varying(255),
	caract_site_restaurant_horaire character varying(255),
	caract_site_restaurant_contact_tel character varying(14),
	caract_site_restaurant_contact_mail character varying(255),
	caract_site_restaurant_commentaire text,
	divers_commentaires text,
	geom_valide  boolean DEFAULT false,
	geom geometry(Point,2154),
    CONSTRAINT m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo_pkey PRIMARY KEY (id),
    CONSTRAINT m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo_uniq UNIQUE (site_code)
);

--
COMMENT ON TABLE met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo IS 'Plan urgence : Localisation des lieux d''accueil et d''hebergement dans les internats en Nouvelle-Aquitaine';
