view: ahr {
  sql_table_name: `bs_us_health_rankings.ahr` ;;

  dimension: edition {
    type: number
    sql: ${TABLE}.edition ;;
  }
  dimension: lower_ci {
    type: number
    sql: ${TABLE}.lower_ci ;;
  }
  dimension: measure_name {
    type: string
    sql: ${TABLE}.measure_name ;;
  }
  dimension: report_type {
    type: string
    sql: ${TABLE}.report_type ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: source_date {
    type: string
    sql: ${TABLE}.source_date ;;
  }
  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }
  dimension: subpopulation {
    type: string
    sql: ${TABLE}.subpopulation ;;
  }
  dimension: upper_ci {
    type: number
    sql: ${TABLE}.upper_ci ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [state_name, measure_name]
  }
}
