/* PLAN_URGENCE V1.0 */
/* Creation des droits sur l'ensemble des objets */
/* plan_urgence_99_droit.sql */
/* PostgreSQL/PostGIS */
/* Conseil régional Nouvelle-Aquitaine - https://cartographie.nouvelle-aquitaine.fr/ */
/* Auteur : Tony VINCENT */

-- met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo
GRANT ALL ON TABLE met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo TO "pre-sig-usr";
GRANT SELECT ON TABLE met_plan_urgence.m_plan_urgence_covid19_lieux_accueil_hebergement_na_geo TO "pre-sig-ro";

-- met_plan_urgence.m_plan_urgence_covid19_hopitaux_mobilises_na_geo
GRANT ALL ON TABLE met_plan_urgence.m_plan_urgence_covid19_hopitaux_mobilises_na_geo TO "pre-sig-usr";
GRANT SELECT ON TABLE met_plan_urgence.m_plan_urgence_covid19_hopitaux_mobilises_na_geo TO "pre-sig-ro";
