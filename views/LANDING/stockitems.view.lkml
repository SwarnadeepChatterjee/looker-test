# The name of this view in Looker is "Stockitems"
view: stockitems {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LANDING"."STOCKITEMS" ;;

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

  dimension: barcode {
    type: string
    sql: ${TABLE}."BARCODE" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: colorid {
    type: number
    value_format_name: id
    sql: ${TABLE}."COLORID" ;;
  }

  dimension: customfields {
    type: string
    sql: ${TABLE}."CUSTOMFIELDS" ;;
  }

  dimension: internalcomments {
    type: string
    sql: ${TABLE}."INTERNALCOMMENTS" ;;
  }

  dimension: ischillerstock {
    type: yesno
    sql: ${TABLE}."ISCHILLERSTOCK" ;;
  }

  dimension: lasteditedby {
    type: number
    sql: ${TABLE}."LASTEDITEDBY" ;;
  }

  dimension: leadtimedays {
    type: number
    sql: ${TABLE}."LEADTIMEDAYS" ;;
  }

  dimension: marketingcomments {
    type: string
    sql: ${TABLE}."MARKETINGCOMMENTS" ;;
  }

  dimension: outerpackageid {
    type: number
    value_format_name: id
    sql: ${TABLE}."OUTERPACKAGEID" ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}."PHOTO" ;;
  }

  dimension: quantityperouter {
    type: number
    sql: ${TABLE}."QUANTITYPEROUTER" ;;
  }

  dimension: recommendedretailprice {
    type: number
    sql: ${TABLE}."RECOMMENDEDRETAILPRICE" ;;
  }

  dimension: searchdetails {
    type: string
    sql: ${TABLE}."SEARCHDETAILS" ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}."SIZE" ;;
  }

  dimension: stockitemid {
    type: number
    value_format_name: id
    sql: ${TABLE}."STOCKITEMID" ;;
  }

  dimension: stockitemname {
    type: string
    sql: ${TABLE}."STOCKITEMNAME" ;;
  }

  dimension: supplierid {
    type: number
    value_format_name: id
    sql: ${TABLE}."SUPPLIERID" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: taxrate {
    type: number
    sql: ${TABLE}."TAXRATE" ;;
  }

  dimension: typicalweightperunit {
    type: number
    sql: ${TABLE}."TYPICALWEIGHTPERUNIT" ;;
  }

  dimension: unitpackageid {
    type: number
    value_format_name: id
    sql: ${TABLE}."UNITPACKAGEID" ;;
  }

  dimension: unitprice {
    type: number
    sql: ${TABLE}."UNITPRICE" ;;
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
  measure: count {
    type: count
    drill_fields: [stockitemname]
  }
}
