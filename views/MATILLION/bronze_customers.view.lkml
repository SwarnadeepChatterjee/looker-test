# The name of this view in Looker is "Bronze Customers"
view: bronze_customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Bronze_Customers" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Opened Date" in Explore.

  dimension: account_opened_date {
    type: string
    sql: ${TABLE}."AccountOpenedDate" ;;
  }

  dimension: alternate_contact_person_id {
    type: number
    sql: ${TABLE}."AlternateContactPersonID" ;;
  }

  dimension: bill_to_customer_id {
    type: number
    sql: ${TABLE}."BillToCustomerID" ;;
  }

  dimension: buying_group_id {
    type: number
    sql: ${TABLE}."BuyingGroupID" ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}."CreditLimit" ;;
  }

  dimension: customer_category_id {
    type: number
    sql: ${TABLE}."CustomerCategoryID" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."CustomerID" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CustomerName" ;;
  }

  dimension: delivery_address_line1 {
    type: string
    sql: ${TABLE}."DeliveryAddressLine1" ;;
  }

  dimension: delivery_address_line2 {
    type: string
    sql: ${TABLE}."DeliveryAddressLine2" ;;
  }

  dimension: delivery_city_id {
    type: number
    sql: ${TABLE}."DeliveryCityID" ;;
  }

  dimension: delivery_location {
    type: string
    sql: ${TABLE}."DeliveryLocation" ;;
  }

  dimension: delivery_method_id {
    type: number
    sql: ${TABLE}."DeliveryMethodID" ;;
  }

  dimension: delivery_postal_code {
    type: string
    sql: ${TABLE}."DeliveryPostalCode" ;;
  }

  dimension: delivery_run {
    type: string
    sql: ${TABLE}."DeliveryRun" ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}."FaxNumber" ;;
  }

  dimension: is_on_credit_hold {
    type: yesno
    sql: ${TABLE}."IsOnCreditHold" ;;
  }

  dimension: is_statement_sent {
    type: yesno
    sql: ${TABLE}."IsStatementSent" ;;
  }

  dimension: last_edited_by {
    type: number
    sql: ${TABLE}."LastEditedBy" ;;
  }

  dimension: payment_days {
    type: number
    sql: ${TABLE}."PaymentDays" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."PhoneNumber" ;;
  }

  dimension: postal_address_line1 {
    type: string
    sql: ${TABLE}."PostalAddressLine1" ;;
  }

  dimension: postal_address_line2 {
    type: string
    sql: ${TABLE}."PostalAddressLine2" ;;
  }

  dimension: postal_city_id {
    type: number
    sql: ${TABLE}."PostalCityID" ;;
  }

  dimension: postal_postal_code {
    type: string
    sql: ${TABLE}."PostalPostalCode" ;;
  }

  dimension: primary_contact_person_id {
    type: number
    sql: ${TABLE}."PrimaryContactPersonID" ;;
  }

  dimension: run_position {
    type: string
    sql: ${TABLE}."RunPosition" ;;
  }

  dimension: standard_discount_percentage {
    type: number
    sql: ${TABLE}."StandardDiscountPercentage" ;;
  }

  dimension: valid_from {
    type: string
    sql: ${TABLE}."ValidFrom" ;;
  }

  dimension: valid_to {
    type: string
    sql: ${TABLE}."ValidTo" ;;
  }

  dimension: website_url {
    type: string
    sql: ${TABLE}."WebsiteURL" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
