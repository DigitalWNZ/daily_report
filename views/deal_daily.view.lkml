view: deal_daily {
  derived_table: {
    sql: SELECT * ,
      "Slickdeals" as Channel
      FROM `alidbtogcp.google_sheet.google_sheet_slickdeals`
      union all
      select *,
      "Dealnews" as Channel
      from  `alidbtogcp.google_sheet.google_sheet_ deal_news`
      union all
      select *,
      "DealWiki" as Channel
      from `alidbtogcp.google_sheet.google_sheet_ dea_wiki`
      union all
      select *,
      "BradsDeal" as Channel
      from `alidbtogcp.google_sheet.google_sheet_bradsdeal`
      union all
      select *,
      "iHotOffer" AS Channel
      from `alidbtogcp.google_sheet.google_sheet_ihot_offer`
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.weekday ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: coupon_used_time {
    type: number
    sql: ${TABLE}.coupon_used_time ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cos {
    type: string
    sql: ${TABLE}.cos ;;
  }

  dimension: channel {
    type: string
    primary_key: yes
    sql: ${TABLE}.Channel ;;
  }

  set: detail {
    fields: [
      weekday,
      date,
      sessions,
      coupon_used_time,
      revenue,
      cost,
      cos,
      channel
    ]
  }
}
