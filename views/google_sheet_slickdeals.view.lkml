view: google_sheet_slickdeals {
  sql_table_name: `google_sheet.google_sheet_slickdeals`
    ;;

  dimension: cos {
    type: string
    sql: ${TABLE}.cos ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: coupon_used_time {
    type: number
    sql: ${TABLE}.coupon_used_time ;;
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

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
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
