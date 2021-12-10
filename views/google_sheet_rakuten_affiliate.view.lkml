view: google_sheet_rakuten_affiliate {
  sql_table_name: `google_sheet.google_sheet_rakuten_affiliate`
    ;;

  dimension: aov {
    type: number
    sql: ${TABLE}.aov ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cr {
    type: string
    sql: ${TABLE}.cr ;;
  }

  dimension_group: date {
    type: time
    description: "%E4Y/%m/%d"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.weekday ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
