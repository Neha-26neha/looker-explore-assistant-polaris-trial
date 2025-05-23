# Define the database connection to be used for this model.
connection: "polaris-ai"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: polaris_ai_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: polaris_ai_default_datagroup
explore:New_Marketing_Engaged_MQL_Funnel{
  view_name: New_Marketing_Engaged_MQL_Funnel
  case_sensitive: no
  }
explore:Testing{
  view_name: Testing
  case_sensitive: no
}
explore:Country{
  view_name: Country
  case_sensitive: no
}
explore:MQL_Region{
  view_name: MQL_Region
  case_sensitive: no
}

explore:me_inquiry_funnel{
  view_name: me_inquiry_funnel
  case_sensitive: no
}

explore:me_qso_funnel{
  view_name: me_qso_funnel
  case_sensitive: no
}
