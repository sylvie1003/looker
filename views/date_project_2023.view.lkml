view: date_project_2023 {
  sql_table_name: `webeye-internal-test.looker_champion_dataset.2023_date_project` ;;


  dimension: credit {
    type: number
    sql: ${TABLE}.Credit ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }
  dimension: final_cost {
    type: number
    sql: ${TABLE}.Final_Cost ;;
  }
  dimension: list_cost {
    type: number
    sql: ${TABLE}.List_Cost ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.Project_ID ;;
  }
  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }
  dimension: project_number {
    type: number
    sql: ${TABLE}.Project_Number ;;
  }
  measure: count {
    type: count
    drill_fields: [project_name]
  }
# self-defined dimension and measure
  measure: sum_cost {
    type: sum
    sql: ${TABLE}.Final_Cost ;;
    value_format: "$#,##0.00"
  }
}
