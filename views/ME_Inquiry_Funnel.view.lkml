view: me_inquiry_funnel {
  # The sql_table_name parameter indicates the underlying database table
  sql_table_name: `google.com:project-polaris-ai.project_polaris_ai_ds.ME_Inquiry_Funnel` ;;

  # No mary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Account_Engagement_Type Dimension
  dimension: Account_Engagement_Type {
    type: string
    sql: ${TABLE}.Account_Engagement_Type ;;
    label: "Account Engagement Type"
    description: "For Inquiries & Leads, indicates Attribution 3.0 attribution eligibility by flagging whether it is a High Value exception, sourced from a currently High Engagement account, or sourced from a currently Low Engagement account. 'Not in Attribution 3.0 Scope' indicates that it is neither sourced from an A3.0-eligible account, the 6 OKR regions, nor associated with GCP/GWS products. "
    tags: ["Account Engagement Type","Engagement Type"]
  }

  # Account_Engagement_Subtype  Dimension
  dimension: Account_Engagement_Subtype {
    type: string
    sql: ${TABLE}.Account_Engagement_Subtype ;;
    label: "Account_Engagement_Subtype"
    description: "For Inquiries & Leads, indicates Attribution 3.0 attribution eligibility by flagging like 'High Engagement account', 'Low Engagement account', 'Not in Attribution 3.0 Scope'"
    tags: ["Account Engagement Subtype","Engagement Subtype"]
  }

  # Account_GCP_Greenfield_Flag Dimension
  dimension: Account_GCP_Greenfield_Flag {
    type: string
    sql:${TABLE}.Account_GCP_Greenfield_Flag;;
    label: "Account_GCP_Greenfield_Flag"
    description: "Indicates if this was a new account for GCP at the end of the previous fiscal period."
    tags: ["Account GCP Greenfield Flag","GCP Greenfield Flag","GCP Greenfield"]
  }

  # Account_GWS_Greenfield_Flag Dimension
  dimension: Account_GWS_Greenfield_Flag {
    type: string
    sql:${TABLE}.Account_GWS_Greenfield_Flag;;
    label: "Account_GWS_Greenfield_Flag"
    description: "Indicates if this was a new account for GWS at the end of the previous fiscal period."
    tags: ["Account GWS Greenfield Flag","GWS Greenfield Flag","GWS Greenfield"]
  }

  # Account_Sales_Team_NAL_Cluster Dimension
  dimension: Account_Sales_Team_NAL_Cluster {
    type: string
    sql: ${TABLE}.Account_Sales_Team_NAL_Cluster ;;
    label: "Account Sales Team NAL Cluster"
    description: "Sales NAL cluster for which the account is assigned."
    tags: ["Account Sales Team NAL Cluster","Sales NAL Cluster"]
  }

  # Account_Sales_Team_NAL_Micro_Cluster Dimension
  dimension: Account_Sales_Team_NAL_Micro_Cluster {
    type: string
    sql: ${TABLE}.Account_Sales_Team_NAL_Micro_Cluster ;;
    label: "Account Sales Team NAL Micro Cluster"
    description: "Sales NAL microcluster for which the account is assigned."
    tags: ["Account Sales Team NAL Micro Cluster","Sales NAL Micro Cluster"]
  }

  # Account_Sales_Team_NAL_Sub_Cluster Dimension
  dimension: Account_Sales_Team_NAL_Sub_Cluster {
    type: string
    sql: ${TABLE}.Account_Sales_Team_NAL_Sub_Cluster ;;
    label: "Account Sales Team NAL Sub Cluster"
    description: "Sales NAL subcluster for which the account is assigned."
    tags: ["Account Sales Team NAL Sub Cluster","Sales NAL Sub Cluster"]
  }

  # Account_Sales_Region Dimension
  dimension: Account_Sales_Region {
    type: string
    sql: ${TABLE}.Account_Sales_Region ;;
    label: "Account Sales Region"
    description: "Sales region for which the account is assigned."
    tags: ["Account Sales Region","Sales Region","Region"]
  }

  # Account_Sales_Sub_Region Dimension
  dimension: Account_Sales_Sub_Region {
    type: string
    sql: ${TABLE}.Account_Sales_Sub_Region ;;
    label: "Account Sales Sub Region"
    description: "Sales subregion for which the account is assigned."
    tags: ["Account Sales Sub Region","Sales Sub Region","Sub Region"]
  }

  # Account_Sales_Micro_Region Dimension
  dimension: Account_Sales_Micro_Region {
    type: string
    sql:${TABLE}.Account_Sales_Micro_Region;;
    label: "Account Sales Micro Region"
    description: "Sales microregion for which the account is assigned."
    tags: ["Account Sales Micro Region","Sales Micro Region","Micro Region"]
  }

  # Account_Sector Dimension
  dimension: Account_Sector {
    type: string
    sql: ${TABLE}.Account_Sector ;;
    label: "Account Sector"
    description: "Indicates whether an account is Commercial vs Public Sector. "
    tags: ["Account Sector","Sector"]
  }

  # Account_Segment Dimension
  dimension: Account_Segment {
    type: string
    sql: ${TABLE}.Account_Segment ;;
    label: "Account Segment"
    description: "The segment represents the spending potential of the Account on Cloud Products."
    tags: ["Account Segment","Segment"]
  }

  # Account_Segment_Category Dimension
  dimension: Account_Segment_Category {
    type: string
    sql: ${TABLE}.Account_Segment_Category ;;
    label: "Account_Segment_Category"
    description: "Rolls up Corporate, Enterprise, and Select account segments into 'Named' and SMB account segment into 'SMB'."
    tags: ["Account Segment Category","Segment Category"]
  }

  # Attributed_Inquiries Dimension
  dimension: Attributed_Inquiries {
    type: number
    sql:${TABLE}.Attributed_Inquiries;;
    label: "Attributed Inquiries"
    description: "The number of responses to a Marketing SFDC campaign. This can be a fraction divided among Campaign Sub Themes."
    tags: ["Attributed Inquiries"]
  }

  # Attributed_MQLs Dimension
  dimension: Attributed_MQLs {
    type: number
    sql:${TABLE}.Attributed_MQLs;;
    label: "Attributed MQLs"
    description: "Attributed number of MQLs (between 0 & 1) that indicates the fraction of the MQL that is attributable to each Inquiry that sourced it."
    tags: ["Attributed MQLs","MQLs"]
  }

# Attributed_QSOs Dimension
  dimension: Attributed_QSOs {
    type: number
    sql: ${TABLE}.Attributed_QSOs ;;
    label: "Attributed QSOs"
    description: "Attributed number (between 0 & 1) that indicates the fraction of the QSO that is attributable to eligible inquiries and/or leads (includes placeholders for outbound opportunities)."
    tags: ["Attributed QSOs"]
  }

# Attributed_S0s Dimension
  dimension: Attributed_S0s {
    type: number
    sql: ${TABLE}.Attributed_S0s ;;
    label: "Attributed S0s"
    description: "Attributed number (between 0 & 1) that indicates the fraction of the S0 that is attributable to eligible inquiries and/or leads (includes placeholders for outbound opportunities)."
    tags: ["Attributed S0s"]
  }

  # Attributed_SALs Dimension
  dimension: Attributed_SALs {
    type: string
    sql:${TABLE}.Attributed_SALs;;
    label: "Attributed SALs"
    description: "Attributed number of SALs (between 0 & 1) that indicates the fraction of the SAL that is attributable to the Inquiries that sourced it. "
    tags: ["Attributed SALs"]
  }

# Buyer_Segment_Rollup Dimension
  dimension: Buyer_Segment_Rollup {
    type: string
    sql: ${TABLE}.Buyer_Segment_Rollup ;;
    label: "Buyer Segment Rollup"
    description: "The propect's role at their company rolled up to Executive, Decision Maker, Practitioner, or Unknown based on the Buyer Segment model."
    tags: ["Buyer Segment Rollup"]
  }

# Demand_Type Dimension
  dimension: Demand_Type {
    type: string
    sql: ${TABLE}.Demand_Type ;;
    label: "Demand Type"
    description: "Indicates whether the marketing effort was part of the Inbound or Outbound funnel. Inbound starts the prospect journey with an inquiry while Outbound starts with opportunity creation from sales outreach assisted by Marketing."
    tags: ["Demand Type"]
  }

# Greenfield_Status Dimension
  dimension: Greenfield_Status {
    type: string
    sql:${TABLE}.Greenfield_Status;;
    label: "Greenfield Status"
    description: "Arbitrates the Greenfield status of demand based on the funnel stage, product, and date the demand was sourced -- use Greenfield Status to keep it simple!"
    tags: ["Greenfield Status"]
  }

# Inquiry_Datetime Dimension
  dimension: Inquiry_Datetime {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.Inquiry_Datetime AS STRING));;
    type: date
    label: "Inquiry_Datetime"
    description: "The datetime the inquiry was submitted."
    tags: ["Inquiry Datetime"]
  }

# Inquiry_Month Dimension
  dimension: Inquiry_Month {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.Inquiry_Month AS STRING));;
    type: date
    label: "Inquiry_Month"
    description: "The month the inquiry was submitted."
    tags: ["Inquiry Month","month"]
  }

# Inquiry_Week Dimension
  dimension: Inquiry_Week {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.Inquiry_Week AS STRING));;
    type: date
    label: "Inquiry_Week"
    description: "The week (starting Sunday) the inquiry was submitted."
    tags: ["Inquiry Week","week"]
  }

# Inquiry_Date Dimension
  dimension: Inquiry_Date {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.Inquiry_Date AS STRING));;
    type: date
    label: "Inquiry_Date"
    description: "The date the inquiry was submitted."
    tags: ["Inquiry Date","date"]
  }

# Inquiry_Source Dimension
  dimension: Inquiry_Source {
    type: string
    sql: ${TABLE}.Inquiry_Source ;;
    label: "Inquiry_Source"
    description: "Inquiry was sourced by Direct Marketing vs Partner Marketing. If there is overlap between Direct and Partner, credit is split evenly with multi-touch attribution."
    tags: ["Inquiry Source"]
  }

# Inquiry_Product_Family Dimension
  dimension: Inquiry_Product_Family {
    type: string
    sql: ${TABLE}.Inquiry_Product_Family ;;
    label: "Inquiry_Product_Family"
    description: "The rolled up product family associated with the campaign."
    tags: ["Inquiry Product Family","Product Family"]
  }

# Inquiry_High_Value_Exception_Flag Dimension
  dimension: Inquiry_High_Value_Exception_Flag {
    type: string
    sql: ${TABLE}.Inquiry_High_Value_Exception_Flag ;;
    label: "Inquiry_High_Value_Exception_Flag"
    description: "Flags whether an inquiry is sourced via an A3.0-eligible High Value Touch"
    tags: ["Inquiry High Value Exception Flag","High Value Exception Flag","Exception Flag"]
  }

# Lead_Sfdc_Engagement_Id Dimension
  dimension: Lead_Sfdc_Engagement_Id {
    type: string
    sql: ${TABLE}.Lead_Sfdc_Engagement_Id ;;
    label: "Lead_Sfdc_Engagement_Id"
    description: "The ID of the engagement record in Salesforce."
    tags: ["Lead Sfdc Engagement Id","Lead Engagement Id","Engagement Id"]
  }

# Marketing_Program_Category Dimension
  dimension: Marketing_Program_Category {
    type: string
    sql: ${TABLE}.Marketing_Program_Category ;;
    label: "Marketing_Program_Category"
    description: "The category into which the marketing program falls. "
    tags: ["Marketing Program Category","Program Category"]
  }

# MQL_Disposition Dimension
  dimension: MQL_Disposition {
    type: string
    sql: ${TABLE}.MQL_Disposition ;;
    label: "MQL Disposition"
    description: "The final outcome of the MQL (whether the MQL became an SAL or not)."
    tags: ["MQL Disposition"]
  }

# MQL_Disposition_Datetime Dimension
  dimension: MQL_Disposition_Datetime {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.MQL_Disposition_Datetime AS STRING));;
    type: date
    label: "MQL_Disposition_Datetime"
    description: "The datetime the MQL is dispositioned (Accepted, Rejected, or Auto Closed). "
    tags: ["MQL Disposition Date"]
  }

# MQL_Key Dimension
  dimension: MQL_Key {
    type: string
    sql: ${TABLE}.MQL_Key ;;
    label: "MQL_Key"
    description: "The unique identifier (primary key) for each marketing qualification event."
    tags: ["MQL Key"]
  }

# MQL_Qualification_Datetime Dimension
  dimension: MQL_Qualification_Datetime {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.MQL_Qualification_Datetime AS STRING));;
    type: date
    label: "MQL_Qualification_Datetime"
    description: "The datetime the MQL qualified the MQL scoring threshold or the PreMQL was accepted/worked by a sales rep. "
    tags: ["MQL Qualification Date","Qualification Date"]
  }

# Offer_Type Dimension
  dimension: Offer_Type {
    type: string
    sql: ${TABLE}.Offer_Type ;;
    label: "Offer_Type"
    description: "The type of proposed offer we are giving the prospect."
    tags: ["Offer Type"]
  }

# OKR_Reporting_Scope Dimension
  dimension: OKR_Reporting_Scope {
    type: string
    sql: ${TABLE}.OKR_Reporting_Scope ;;
    label: "OKR Reporting Scope"
    description: "This attribute give details about OKR Reporting Scope"
    tags: ["OKR Reporting Scope"]
  }

# Opportunity_Product_Family Dimension
  dimension: Opportunity_Product_Family {
    type: string
    sql: ${TABLE}.Opportunity_Product_Family ;;
    label: "Opportunity_Product_Family"
    description: "Product family (Google Cloud Platform, Google Workspace) associated with the Salesforce opportunity. This is determined by the sales rep when qualifying an opportunity. "
    tags: ["Opportunity Product Family"]
  }

# Person_Title Dimension
  dimension: Person_Title {
    type: string
    sql: ${TABLE}.Person_Title ;;
    label: "Person_Title"
    description: "Designation of the Person. e.g. 'Student', 'Engineer' etc.,"
    tags: ["Person Title","Title"]
  }

# SAL_Disposition Dimension
  dimension: SAL_Disposition {
    type: number
    sql: ${TABLE}.SAL_Disposition ;;
    label: "SAL Disposition"
    description: "The final outcome of the SAL, where either an opportunity was created or not (i.e. did the Lead reach the S0+ stage). This field does not apply for Attribution 3.0."
    tags: ["SAL Disposition"]
  }

# SAL_Disposition_Datetime Dimension
  dimension: SAL_Disposition_Datetime {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.SAL_Disposition_Datetime AS STRING));;
    type: date
    label: "SAL_Disposition_Datetime"
    description: "The datetime the SAL is dispositioned (Opportunity Created or Recycled SAL)."
    tags: ["SAL Disposition Date"]
  }

# SAL_Key Dimension
  dimension: SAL_Key {
    type: string
    sql: ${TABLE}.SAL_Key ;;
    label: "SAL_Key"
    description: "The unique identifier (primary key) for each Sales Accepted Lead."
    tags: ["SAL Key"]
  }

# Sfdc_Account_Id Dimension
  dimension: Sfdc_Account_Id {
    type: string
    sql: ${TABLE}.Sfdc_Account_Id ;;
    label: "Sfdc_Account_Id"
    description: "The Salesforce ID for the account that the person belongs to. "
    tags: ["Sfdc Account Id","Account Id"]
  }

# SFDC_Campaign_Name Dimension
  dimension: SFDC_Campaign_Name {
    type: string
    sql: ${TABLE}.SFDC_Campaign_Name ;;
    label: "SFDC Campaign Name"
    description: "The name of the Salesforce campaign."
    tags: ["SFDC Campaign Name", "Campaign Name", "Campaign"]
  }

# Source Dimension
  dimension: Source {
    type: string
    sql: ${TABLE}.Source ;;
    label: "Source"
    description: "Uses 'Inquiry Source' for Inquiries & Leads; uses 'Opportunity Source' for Opportunities. "
    tags: ["Source"]
}


# Attributed_Inquiries measure
measure: Total_Attributed_Inquiries {
  type: number
  sql: SUM(${TABLE}.Attributed_Inquiries) ;;
  label: "Total_Attributed_Inquiries"
  description: "Sum of Attributed Inquiries"
  tags: ["Sum of Attributed Inquiries","Sum of Inquiries"]
}

# Inq_to_MQL measure
measure: Inq_to_MQL {
  type: number
  sql: SUM(${Attributed_MQLs}) / NULLIF(SUM(${Attributed_Inquiries}), 0) ;;
  label: "Inq_to_MQL"
  description: "This attribute give details about Inq to MQL"
  tags: ["Inq to MQL"]
}

# Attributed_MQLs measure
measure: Total_Attributed_MQLs {
  type: number
  sql: SUM(${TABLE}.Attributed_MQLs) ;;
  label: "Total_Attributed_MQLs"
  description: "Sum of Attributed MQLs"
  tags: ["Sum of Attributed MQLs","Sum of MQLs"]
}

# MQL_to_SAL measure
measure: MQL_to_SAL {
  type: number
  sql: SUM(${Attributed_SALs}) / NULLIF(SUM(${Attributed_MQLs}), 0) ;;
  label: "MQL_to_SAL"
  description: "This attribute give details about MQL to SAL"
  tags: ["MQL to SAL"]
}

# Attributed_SALs measure
measure: Total_Attributed_SALs {
  type: number
  sql: SUM(${TABLE}.Attributed_SALs) ;;
  label: "Total_Attributed_SALs"
  description: "This attribute give details about sum of Attributed SALs"
  tags: ["sum of Attributed SALs","Sum of SALs"]
}

# SAL_to_S0 measure
measure: SAL_to_S0 {
  type: number
  sql: SUM(${Attributed_S0s}) / NULLIF(SUM(${Attributed_SALs}), 0) ;;
  label: "SAL_to_S0"
  description: "This attribute give details about SAL to S0"
  tags: ["SAL to S0"]
}

# Attributed_S0s measure
measure: Total_Attributed_S0s {
  type: number
  sql: SUM(${TABLE}.Attributed_S0s) ;;
  label: "Total_Attributed_S0s"
  description: "This attribute give details about Total_Attributed_S0s"
  tags: ["sum of Attributed S0s","Sum of S0s"]
}

# S0_to_QSO measure
measure: S0_to_QSO {
  type: number
  sql: SUM(${Attributed_QSOs}) / NULLIF(SUM(${Attributed_S0s}), 0) ;;
  label: "S0_to_QSO"
  description: "This attribute give details about S0 to QSO"
  tags: ["S0 to QSO"]
}

# Attributed_QSOs measure
measure: Total_Attributed_QSOs {
  type: number
  sql: SUM(${TABLE}.Attributed_QSOs) ;;
  label: "Total_Attributed_QSOs"
  description: "This attribute give details about Total_Attributed_QSOs"
  tags: ["sum of Attributed QSOs","Sum of QSOs"]
}

# MQL_to_QSO measure
measure: MQL_to_QSO{
  type: number
  sql: SUM(${Attributed_QSOs}) / NULLIF(SUM(${Attributed_MQLs}), 0) ;;
  label: "MQL_to_QSO"
  description: "This attribute give details about MQL to QSO"
  tags: ["MQL to QSO"]
}

# SAL_to_QSO measure
measure: SAL_to_QSO{
  type: number
  sql: SUM(${Attributed_QSOs}) / NULLIF(SUM(${Attributed_SALs}), 0) ;;
  label: "SAL_to_QSO"
  description: "This attribute give details about SAL to QSO"
  tags: ["SAL to QSO"]
}

# Inquiry_Key Dimension
dimension: Inquiry_Key {
  type: string
  sql: ${TABLE}.Inquiry_Key ;;
  label: "Inquiry Key"
  description: "The unique identifier (primary key) for the inquiry."
  tags: ["Inquiry Key","inquiry","inquiries"]
}

# Inquiry_Key_Count measure
measure: Inquiry_Key_Count {
  type: count
  drill_fields: [Inquiry_Key]
  label: "Inquiry_Key_Count"
  description: "This attribute give details about count of Inquiry Key"
  tags: ["Inquiry Count","count of Inquiries"]
}


# Inquiry_Date Dimension Group
dimension_group: Inquiry_Date {
  type: time
  timeframes: [raw, time, date, week, month, quarter, year]
  sql: ${TABLE}.Inquiry_Date ;;
  label: "Inquiry Date"
  description: "the Inquiry Date submitted"
  tags: ["Inquiry Date","date"]
}

# Previous Week, Month, Quarter and Year Dimensions
dimension: previous_week {
  type: date
  sql: DATE_SUB(DATE_TRUNC(CURRENT_DATE(), WEEK), INTERVAL 1 WEEK) ;;
  label: "Previous Week"
  description: "Date one week prior to the current date"
  tags: ["previous week","last week"]
}

dimension: previous_month {
  type: date
  sql: DATE_TRUNC(DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH), MONTH) ;;
  label: "Previous Month"
  description: "Date one month prior to the current date"
  tags: ["previous month","last month"]
}

dimension: previous_quarter {
  type: date
  sql: DATE_TRUNC(DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH), QUARTER) ;;
  label: "Previous Quarter"
  description: "Date one quarter prior to the current date"
  tags: ["previous month","last month"]
}

dimension: previous_year {
  type: date
  sql: DATE(FORMAT_DATE('%Y-01-01', DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR))) ;;
  label: "Previous Year"
  description: "Date one year prior to the current date"
  tags: ["previous year","last year"]
}


}
