# The name of this view in Looker is "Customers"
view: customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LANDING"."CUSTOMERS" ;;

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

  dimension_group: accountopeneddate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ACCOUNTOPENEDDATE" ;;
  }

  dimension: alternatecontactpersonid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ALTERNATECONTACTPERSONID" ;;
  }

  dimension: billtocustomerid {
    type: number
    value_format_name: id
    sql: ${TABLE}."BILLTOCUSTOMERID" ;;
  }

  dimension: buyinggroupid {
    type: number
    value_format_name: id
    sql: ${TABLE}."BUYINGGROUPID" ;;
  }

  dimension: creditlimit {
    type: number
    sql: ${TABLE}."CREDITLIMIT" ;;
  }

  dimension: customercategoryid {
    type: number
    value_format_name: id
    sql: ${TABLE}."CUSTOMERCATEGORYID" ;;
  }

  dimension: customerid {
    type: number
    value_format_name: id
    sql: ${TABLE}."CUSTOMERID" ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}."CUSTOMERNAME" ;;
  }

  dimension: deliveryaddressline1 {
    type: string
    sql: ${TABLE}."DELIVERYADDRESSLINE1" ;;
  }

  dimension: deliveryaddressline2 {
    type: string
    sql: ${TABLE}."DELIVERYADDRESSLINE2" ;;
  }

  dimension: deliverycityid {
    type: number
    value_format_name: id
    sql: ${TABLE}."DELIVERYCITYID" ;;
  }

  dimension: deliverylocation {
    type: string
    sql: ${TABLE}."DELIVERYLOCATION" ;;
  }

  dimension: deliverymethodid {
    type: number
    value_format_name: id
    sql: ${TABLE}."DELIVERYMETHODID" ;;
  }

  dimension: deliverypostalcode {
    type: string
    sql: ${TABLE}."DELIVERYPOSTALCODE" ;;
  }

  dimension: deliveryrun {
    type: string
    sql: ${TABLE}."DELIVERYRUN" ;;
  }

  dimension: faxnumber {
    type: string
    sql: ${TABLE}."FAXNUMBER" ;;
  }

  dimension: isoncredithold {
    type: yesno
    sql: ${TABLE}."ISONCREDITHOLD" ;;
  }

  dimension: isstatementsent {
    type: yesno
    sql: ${TABLE}."ISSTATEMENTSENT" ;;
  }

  dimension: lasteditedby {
    type: number
    sql: ${TABLE}."LASTEDITEDBY" ;;
  }

  dimension: paymentdays {
    type: number
    sql: ${TABLE}."PAYMENTDAYS" ;;
  }

  dimension: phonenumber {
    type: string
    sql: ${TABLE}."PHONENUMBER" ;;
  }

  dimension: postaladdressline1 {
    type: string
    sql: ${TABLE}."POSTALADDRESSLINE1" ;;
  }

  dimension: postaladdressline2 {
    type: string
    sql: ${TABLE}."POSTALADDRESSLINE2" ;;
  }

  dimension: postalcityid {
    type: number
    value_format_name: id
    sql: ${TABLE}."POSTALCITYID" ;;
  }

  dimension: postalpostalcode {
    type: string
    sql: ${TABLE}."POSTALPOSTALCODE" ;;
  }

  dimension: primarycontactpersonid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRIMARYCONTACTPERSONID" ;;
  }

  dimension: runposition {
    type: string
    sql: ${TABLE}."RUNPOSITION" ;;
  }

  dimension: standarddiscountpercentage {
    type: number
    sql: ${TABLE}."STANDARDDISCOUNTPERCENTAGE" ;;
  }

  dimension_group: validfrom {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."VALIDFROM" ;;
  }

  dimension_group: validto {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."VALIDTO" ;;
  }

  dimension: websiteurl {
    type: string
    sql: ${TABLE}."WEBSITEURL" ;;
  }
  measure: count {
    type: count
    drill_fields: [customername]
  }
}
