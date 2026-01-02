# The name of this view in Looker is "Bronze Buying Groups"
view: bronze_buying_groups {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Bronze_BuyingGroups" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Buying Group ID" in Explore.

  dimension: buying_group_id {
    type: number
    sql: ${TABLE}."BuyingGroupID" ;;
  }

  dimension: buying_group_name {
    type: string
    sql: ${TABLE}."BuyingGroupName" ;;
  }

  dimension: last_edited_by {
    type: number
    sql: ${TABLE}."LastEditedBy" ;;
  }

  dimension: valid_from {
    type: string
    sql: ${TABLE}."ValidFrom" ;;
  }

  dimension: valid_to {
    type: string
    sql: ${TABLE}."ValidTo" ;;
  }
  measure: count {
    type: count
    drill_fields: [buying_group_name]
  }
}
