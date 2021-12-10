view: google_sheet_erp_sales_cost {
  sql_table_name: `google_sheet.google_sheet_erp_sales_cost`
    ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
