view: Country {
  # The sql_table_name parameter indicates the underlying database table
  sql_table_name: `google.com:project-polaris-ai.project_polaris_ai_ds.Country` ;;

  # No mary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Country Dimension
  dimension: Country {
    type: string
    sql:${TABLE}.Country;;
    label: "Country"
    description: "This attribute give details about Country"
    tags: ["Country"]
  }

  # Country_code Dimension
  dimension: Country_code {
    type: string
    sql: ${TABLE}.Country_code ;;
    label: "Country Code"
    description: "This attribute give details about Country Code"
    tags: ["Country Code"]
  }

  # Population Dimension
  dimension: Population {
    type: string
    sql: ${TABLE}.Population ;;
    label: "Population"
    description: "This attribute give details about Population"
    tags: ["Population"]
  }

  # Zone Dimension
  dimension: Zone {
    type: string
    sql: ${TABLE}.Zone ;;
    label: "Zone"
    description: "This attribute give details about Zone"
    tags: ["Zone"]
  }

# Country_Count measure
  measure: Country_Count {
    type: count
    drill_fields: [Country]
    label: "Country_Count"
    description: "This attribute give details about count of Country Count"
    tags: ["Country Count","count of Country"]
  }

}
