connection: "bs_us_health_rankings"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: blocksec_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: blocksec_default_datagroup

explore: ahr {}

