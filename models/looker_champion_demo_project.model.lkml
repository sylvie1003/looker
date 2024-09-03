connection: "customer_billing_report_bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_champion_demo_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "5 minutes"
}

persist_with: looker_champion_demo_project_default_datagroup

explore: date_sku_2023 {}
explore: date_project_2023 {}
