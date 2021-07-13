view: success_on_demand {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: `product-marketing.brayden.zendesk_tickets_all` ;;
  #
  # # Define your dimensions and measures here, like this:
  dimension: ticket_id {
  description: "Unique ID for each user that has ordered"
  type: string
  sql: ${TABLE}.ticket_id ;;
  }

  dimension_group: Updated {
  description: "The total number of orders for each user"
  type: time
  timeframes: [date, week, month, year]
  sql: ${TABLE}.Updated ;;
  }
}
