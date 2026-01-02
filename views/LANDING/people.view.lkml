# The name of this view in Looker is "People"
view: people {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LANDING"."PEOPLE" ;;

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

  dimension: customfields {
    type: string
    sql: ${TABLE}."CUSTOMFIELDS" ;;
  }

  dimension: emailaddress {
    type: string
    sql: ${TABLE}."EMAILADDRESS" ;;
  }

  dimension: faxnumber {
    type: string
    sql: ${TABLE}."FAXNUMBER" ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}."FULLNAME" ;;
  }

  dimension: hashedpassword {
    type: string
    sql: ${TABLE}."HASHEDPASSWORD" ;;
  }

  dimension: isemployee {
    type: yesno
    sql: ${TABLE}."ISEMPLOYEE" ;;
  }

  dimension: isexternallogonprovider {
    type: yesno
    sql: ${TABLE}."ISEXTERNALLOGONPROVIDER" ;;
  }

  dimension: ispermittedtologon {
    type: yesno
    sql: ${TABLE}."ISPERMITTEDTOLOGON" ;;
  }

  dimension: issalesperson {
    type: yesno
    sql: ${TABLE}."ISSALESPERSON" ;;
  }

  dimension: issystemuser {
    type: yesno
    sql: ${TABLE}."ISSYSTEMUSER" ;;
  }

  dimension: lasteditedby {
    type: number
    sql: ${TABLE}."LASTEDITEDBY" ;;
  }

  dimension: logonname {
    type: string
    sql: ${TABLE}."LOGONNAME" ;;
  }

  dimension: otherlanguages {
    type: string
    sql: ${TABLE}."OTHERLANGUAGES" ;;
  }

  dimension: personid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PERSONID" ;;
  }

  dimension: phonenumber {
    type: string
    sql: ${TABLE}."PHONENUMBER" ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}."PHOTO" ;;
  }

  dimension: preferredname {
    type: string
    sql: ${TABLE}."PREFERREDNAME" ;;
  }

  dimension: searchname {
    type: string
    sql: ${TABLE}."SEARCHNAME" ;;
  }

  dimension: userpreferences {
    type: string
    sql: ${TABLE}."USERPREFERENCES" ;;
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
    drill_fields: [preferredname, fullname, searchname, logonname]
  }
}
