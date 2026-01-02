# The name of this view in Looker is "Bronze Orders"
view: bronze_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Bronze_Orders" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Backorder Order ID" in Explore.

  dimension: backorder_order_id {
    type: number
    sql: ${TABLE}."backorder_order_id" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."comments" ;;
  }

  dimension: contact_person_id {
    type: number
    sql: ${TABLE}."contact_person_id" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_purchase_order_number {
    type: string
    sql: ${TABLE}."customer_purchase_order_number" ;;
  }

  dimension: delivery_instructions {
    type: string
    sql: ${TABLE}."delivery_instructions" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: expected_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."expected_delivery_date" ;;
  }

  dimension: internal_comments {
    type: string
    sql: ${TABLE}."internal_comments" ;;
  }

  dimension: is_undersupply_backordered {
    type: yesno
    sql: ${TABLE}."is_undersupply_backordered" ;;
  }

  dimension: last_edited_by {
    type: number
    sql: ${TABLE}."last_edited_by" ;;
  }

  dimension_group: last_edited_when {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_edited_when" ;;
  }

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."order_date" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: picked_by_person_id {
    type: number
    sql: ${TABLE}."picked_by_person_id" ;;
  }

  dimension_group: picking_completed_when {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."picking_completed_when" ;;
  }

  dimension: salesperson_person_id {
    type: number
    sql: ${TABLE}."salesperson_person_id" ;;
  }
  measure: count {
    type: count
  }
}
