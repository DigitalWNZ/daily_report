view: google_sheet_bing_cpc {
  sql_table_name: `google_sheet.google_sheet_bing_cpc`
    ;;

  dimension: aov {
    type: number
    sql: ${TABLE}.aov ;;
  }

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.bounce_rate ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cos {
    type: number
    sql: ${TABLE}.cos ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cr {
    type: number
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

  dimension: impression {
    type: number
    sql: ${TABLE}.impression ;;
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
