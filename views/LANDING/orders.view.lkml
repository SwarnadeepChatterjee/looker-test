# The name of this view in Looker is "Orders"
view: orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LANDING"."ORDERS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Fivetran Deleted" in Explore.

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: backorderorderid {
    type: number
    value_format_name: id
    sql: ${TABLE}."BACKORDERORDERID" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: contactpersonid {
    type: number
    value_format_name: id
    sql: ${TABLE}."CONTACTPERSONID" ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    sql: ${TABLE}."CUSTOMERID" ;;
  }

  dimension: customerpurchaseordernumber {
    type: string
    sql: ${TABLE}."CUSTOMERPURCHASEORDERNUMBER" ;;
  }

  dimension: deliveryinstructions {
    type: string
    sql: ${TABLE}."DELIVERYINSTRUCTIONS" ;;
  }

  dimension_group: expecteddeliverydate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."EXPECTEDDELIVERYDATE" ;;
  }

  dimension: internalcomments {
    type: string
    sql: ${TABLE}."INTERNALCOMMENTS" ;;
  }

  dimension: isundersupplybackordered {
    type: yesno
    sql: ${TABLE}."ISUNDERSUPPLYBACKORDERED" ;;
  }

  dimension: lasteditedby {
    type: number
    sql: ${TABLE}."LASTEDITEDBY" ;;
  }

  dimension_group: lasteditedwhen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LASTEDITEDWHEN" ;;
  }

  dimension_group: orderdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ORDERDATE" ;;
  }

  dimension: orderid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ORDERID" ;;
  }

  dimension: pickedbypersonid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PICKEDBYPERSONID" ;;
  }

  dimension_group: pickingcompletedwhen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."PICKINGCOMPLETEDWHEN" ;;
  }

  dimension: salespersonpersonid {
    type: number
    value_format_name: id
    sql: ${TABLE}."SALESPERSONPERSONID" ;;
  }
  measure: count {
    type: count
  }
}
