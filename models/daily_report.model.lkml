connection: "hooya_ga"

# include all the views
include: "/views/**/*.view"

datagroup: daily_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: daily_report_default_datagroup

explore: events_all {
  join: events_all__items {
    view_label: "Events All: Items"
    sql: LEFT JOIN UNNEST(${events_all.items}) as events_all__items ;;
    relationship: one_to_many
  }

  join: events_all__event_params {
    view_label: "Events All: Event Params"
    sql: LEFT JOIN UNNEST(${events_all.event_params}) as events_all__event_params ;;
    relationship: one_to_many
  }

  join: events_all__user_properties {
    view_label: "Events All: User Properties"
    sql: LEFT JOIN UNNEST(${events_all.user_properties}) as events_all__user_properties ;;
    relationship: one_to_many
  }
}
