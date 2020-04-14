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
	site_contact_nom character varying(255),
	site_contact_tel character varying(14),
	site_contact_mail character varying(255),
	caract_site_hebergement boolean DEFAULT false,
	caract_site_hebergement_contact_nom character varying(255),
	caract_site_hebergement_contact_tel character varying(14),
	caract_site_hebergement_contact_mail character varying(255),
	caract_site_hebergement_acces_nuit boolean DEFAULT false,
	caract_site_hebergement_desc character varying(255),
	caract_site_hebergement_horaire character varying(255),
	caract_site_hebergement_transport_centre_hospitalier boolean,
	caract_site_hebergement_transport_centre_hospitalier_desc text,
	caract_site_hebergement_commentaire text,
	caract_site_restaurant boolean DEFAULT false,
	caract_site_restaurant_acces_nuit boolean,
	caract_site_restaurant_desc character varying(255),
	caract_site_restaurant_horaire character varying(255),
	caract_site_restaurant_contact_nom character varying(255),
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

--
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.id IS 'Identifiant';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.site_code IS 'Code de l''établissement ou site';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.site_nom IS 'Nom de l''établissement ou du site';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.adresse IS 'Le site propose un hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.numcom IS 'Code INSEE du site';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.nomcom IS 'Nom de la commune';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.code_postal IS 'Code postal de la commune';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.site_contact_nom IS 'Nom et prénom du contact de l''établissement ou site';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.site_contact_tel IS 'Numéro de téléphone de l''établissmeent ou du site';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.site_contact_mail IS 'Mail de l''établissmeent ou du site';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement IS 'Le site propose t-il un hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_contact_nom IS 'Nom et prénom du contact pour l''hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_contact_tel IS 'Numéro de téléphone du contact pour l''hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_contact_mail IS 'Mail du contact pour l''hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_acces_nuit IS 'L''hébergement est-t-il accessible la nuit';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_desc IS 'Descriptio de l''hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_horaire IS 'Horaires d''accès à l''hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_transport_centre_hospitalier IS 'Possibilité de transport entre l''hébergement et le centre hospitalié';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_transport_centre_hospitalier_desc IS 'Description du transport entre les sites';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_hebergement_commentaire IS 'Commentaire sur l''hébergement';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant IS 'Le site propose t-il de la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_contact_nom IS 'Nom et prénom du contact pour la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_contact_tel IS 'Numéro de téléphone du contact pour la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_contact_mail IS 'Mail du contact pour la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_acces_nuit IS 'La restauration est-t-est accessible la nuit';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_desc IS 'Descriptio de la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_horaire IS 'Horaires d''accès à la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.caract_site_restaurant_commentaire IS 'Commentaire sur la restauration';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.divers_commentaires IS 'Divers : Commentaires';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.geom_valide IS 'Géométrie validée';
COMMENT ON COLUMN met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo.geom IS 'Géométrie (point)';
