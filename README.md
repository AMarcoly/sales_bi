# Sales Data Analysis (BI/OLAP)

## Objectif
Chaîne décisionnelle de bout en bout (ingestion -> entrepôt -> modèle en étoile -> KPIs -> dashboards).

## Structure
- `data/`: jeux de données (raw/external/interim/processed)
- `sql/`: scripts SQL
  - `staging/`: tables de staging (bronze)
  - `warehouse/dimensions/` et `warehouse/facts/`: schéma en étoile (silver/gold)
  - `marts/`: vues matérialisées, agrégats OLAP, KPI marts
  - `tests/`: tests de contraintes/qualité
- `dashboards/`: exports des tableaux de bord
- `notebooks/`: explorations et analyses
- `models/`: artefacts éventuels (prévision simple, etc.)
- `docker/`: fichiers pour l'exécution locale (Postgres/Metabase)
- `dbt_project/` (optionnel) : modèles/test/docs dbt
- `scripts/`: scripts d’orchestration (chargement, seed)
- `tests/`: tests automatisés complémentaires
- `docs/`: documentation additionnelle

## Démarrage rapide
1. Placer/produire les CSV d'échantillon dans `data/raw/`.
2. Écrire les DDL/DML de staging dans `sql/staging/`.
3. Créer dimensions/faits dans `sql/warehouse/`.
4. Construire les marts/kpi dans `sql/marts/`.
5. Construire les dashboards à partir des marts et exporter dans `dashboards/`.

