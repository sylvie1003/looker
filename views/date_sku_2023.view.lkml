view: date_sku_2023 {
  sql_table_name: `looker_champion_dataset.2023_date_sku` ;;

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
  dimension: service {
    type: string
    sql: ${TABLE}.Service ;;
  }
  dimension: service_id {
    type: string
    sql: ${TABLE}.Service_ID ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.SKU_ID ;;
  }
  dimension: sku_id {
    type: string
    sql: ${TABLE}.SKU_ID_4 ;;
  }
  dimension: usage {
    type: number
    sql: ${TABLE}.Usage ;;
  }
  dimension: usage_unit {
    type: string
    sql: ${TABLE}.Usage_Unit ;;
  }
  measure: count {
    type: count
  }
# self-defined dimension and measure
  measure: sum_cost {
    type: sum
    sql: ${TABLE}.Final_Cost ;;
    value_format: "$#,##0.00"
  }
# a filter
  parameter: group {
    type: unquoted
    allowed_value: {value: "byday"}
    allowed_value: {value: "bymonth"}
  }

  dimension: selector {
    sql:
      {% if group._parameter_value == 'byday' %} ${date_date}
      {% else %} ${date_month}
      {% endif %}
    ;;
  }
# total saved
  measure: total_saved {
    type: sum
    sql: -1*(${TABLE}.Discount + ${TABLE}.Credit) ;;
    value_format: "$#,##0.00"
  }
}
