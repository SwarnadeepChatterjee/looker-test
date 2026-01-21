view: example_multi_sql_single_view {
  derived_table: {
    sql:
      WITH t1 AS (
        SELECT * FROM schema1.table1
      ),
      t2 AS (
        SELECT * FROM schema2.table2
      )
      SELECT *
      FROM t1
      LEFT JOIN t2
        ON t1.id = t2.id
    ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
}
