view: me_qso_funnel {
  # The sql_table_name parameter indicates the underlying database table
  sql_table_name: `google.com:project-polaris-ai.project_polaris_ai_ds.ME_QSO_Funnel` ;;

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

  # Account_Sales_Team_NAL_Cluster Dimension
  dimension: Account_Sales_Team_NAL_Cluster {
    type: string
    sql: ${TABLE}.Account_Sales_Team_NAL_Cluster ;;
    label: "Account Sales Team NAL Cluster"
    description: "Sales NAL cluster for which the account is assigned."
    tags: ["Account Sales Team NAL Cluster","Sales NAL Cluster"]
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

# Attributed_Pipeline Dimension
  dimension: Attributed_Pipeline {
    type: string
    sql: ${TABLE}.Attributed_Pipeline ;;
    label: "Attributed Pipeline"
    description: "Attributed pipeline ($) that indicates the fraction of the current S1+ pipeline that is attributable to eligible inquiries and/or leads (includes placeholders for outbound opportunities). "
    tags: ["Attributed Pipeline"]
  }

# Attributed_QSOs Dimension
  dimension: Attributed_QSOs {
    type: number
    sql: ${TABLE}.Attributed_QSOs ;;
    label: "Attributed QSOs"
    description: "Attributed number (between 0 & 1) that indicates the fraction of the QSO that is attributable to eligible inquiries and/or leads (includes placeholders for outbound opportunities)."
    tags: ["Attributed QSOs"]
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

# Opportunity_Source Dimension
  dimension: Opportunity_Source {
    type: string
    sql: ${TABLE}.Opportunity_Source ;;
    label: "Opportunity_Source"
    description: "Identifies whether the opportunity is attributed to Partner vs Direct vs No Marketing Attribution. "
    tags: ["Opportunity Source"]
  }

# QSO_Date Dimension
  dimension: QSO_Date {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.QSO_Date AS STRING));;
    type: date
    label: "QSO_Date"
    description: "The date an opportunity progresses past Stage 0 (S0). "
    tags: ["QSO Date"]
    datatype: date
  }

# QSO_Month Dimension
  dimension: QSO_Month {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.QSO_Month AS STRING));;
    type: date
    label: "QSO_Month"
    description: "The Month an opportunity progresses past Stage 0 (S0). "
    tags: ["QSO Month","month"]
    datatype: date
  }

# QSO_Quarter Dimension
  dimension: QSO_Quarter {
    sql: PARSE_DATE('%Y-%m-%d', CAST(${TABLE}.QSO_Quarter AS STRING));;
    type: date
    label: "QSO_Quarter"
    description: "The Quarter an opportunity progresses past Stage 0 (S0). "
    tags: ["QSO Quarter","Quarter"]
    datatype: date
  }

# Total_Validated_Pipeline Dimension
  dimension: Total_Validated_Pipeline {
    type: number
    sql: ${TABLE}.Total_Validated_Pipeline ;;
    label: "Total_Validated_Pipeline"
    description: "The current pipeline value of all validated S1+ opportunities."
    tags: ["Total Validated Pipeline","Validated Pipeline"]
  }

# Validated_Opportunity_Key Dimension
  dimension: Validated_Opportunity_Key {
    type: string
    sql:${TABLE}.Validated_Opportunity_Key;;
    label: "Validated_Opportunity_Key"
    description: "Unique identifier for all validated S1+ opportunities."
    tags: ["Validated Opportunity Key","Opportunity Key"]
  }



# Attributed_QSOs measure
  measure: Total_Attributed_QSOs {
    type: number
    sql: SUM(${TABLE}.Attributed_QSOs) ;;
    label: "Total_Attributed_QSOs"
    description: "This attribute give details about Total_Attributed_QSOs"
    tags: ["sum of Attributed QSOs","Sum of QSOs"]
  }

# Attributed_Pipeline measure
  measure: Total_Attributed_Pipeline {
    type: number
    sql: SUM(${TABLE}.Attributed_Pipeline) ;;
    label: "Total_Attributed_Pipeline"
    description: "This attribute give details about Total_Attributed_Pipeline"
    tags: ["Total Attributed Pipeline","sum of Attributed Pipeline","sum of pipeline"]
  }

# Total_GTM_QSOs measure
  measure: Total_GTM_QSOs {
    type: number
    sql: COUNT(DISTINCT Validated_Opportunity_Key) ;;
    label: "Total_GTM_QSOs"
    description: "This attribute give details about Total GTM QSOs"
    tags: ["Total GTM QSOs","sum of GTM QSOs"]
  }

# Direct_OKR_QSOs measure
  measure: Direct_OKR_QSOs {
    type: number
    sql: SUM(
        CASE
          WHEN ${OKR_Reporting_Scope} = 'Direct OKR' THEN ${Attributed_QSOs}
          ELSE 0
          END) ;;
    label: "Direct_OKR_QSOs"
    description: "This attribute give details about Direct OKR QSOs"
    tags: ["Direct OKR QSOs"]
  }

# Direct_QSO_Contribution measure
  measure: Direct_QSO_Contribution {
    type: number
    sql: SUM(
          CASE
            WHEN ${OKR_Reporting_Scope} = 'Direct OKR' THEN ${Attributed_QSOs}
            ELSE 0
            END))
        / CAST(NULLIF(COUNT(DISTINCT ${Validated_Opportunity_Key}), 0) AS FLOAT64) ;;
    label: "Total_Attributed_Pipeline"
    description: "This attribute give details about Direct QSO Contribution"
    tags: ["Direct QSO Contribution"]
  }

# Partner_OKR_QSOs measure
  measure: Partner_OKR_QSOs {
    type: number
    sql: SUM(
        CASE
          WHEN ${OKR_Reporting_Scope} = 'Partner OKR' THEN ${Attributed_QSOs}
          ELSE 0
          END) ;;
    label: "Partner_OKR_QSOs"
    description: "This attribute give details about Partner OKR QSOs"
    tags: ["Partner OKR QSOs"]
  }

# Partner_QSO_Contribution measure
  measure: Partner_QSO_Contribution {
    type: number
    sql: SUM(
          CASE
            WHEN ${OKR_Reporting_Scope} = 'Partner OKR' THEN ${Attributed_QSOs}
            ELSE 0
            END))
        / CAST(NULLIF(COUNT(DISTINCT ${Validated_Opportunity_Key}), 0) AS FLOAT64) ;;
    label: "Partner_QSO_Contribution"
    description: "This attribute give details about Partner QSO Contribution"
    tags: ["Partner QSO Contribution"]
  }

# Attributed_OKR_QSOs measure
  measure: Attributed_OKR_QSOs {
    type: number
    sql: SUM(
        CASE
          WHEN ${OKR_Reporting_Scope} IN ('Direct OKR', 'Partner OKR')
            THEN ${Attributed_QSOs}
          ELSE CAST(NULL AS DOUBLE)
          END) ;;
    label: "Attributed_OKR_QSOs"
    description: "This attribute give details about Attributed OKR QSOs"
    tags: ["Attributed OKR QSOs"]
  }

# Marketing_QSO_Contribution measure
  measure: Marketing_QSO_Contribution {
    type: number
    sql: SUM(
          CASE
            WHEN ${OKR_Reporting_Scope} IN ('Direct OKR', 'Partner OKR')
              THEN ${Attributed_QSOs}
            ELSE CAST(NULL AS DOUBLE)
            END))
        / CAST(NULLIF(COUNT(DISTINCT ${Validated_Opportunity_Key}), 0) AS FLOAT64) ;;
    label: "Marketing_QSO_Contribution"
    description: "This attribute give details about Marketing QSO Contribution"
    tags: ["Marketing QSO Contribution"]
  }

# Sum_Total_Validated_Pipeline Dimension
  measure: Sum_Total_Validated_Pipeline {
    type: number
    sql: Sum(${TABLE}.Total_Validated_Pipeline) ;;
    label: "Sum_Total_Validated_Pipeline"
    description: "This attribute give details about Sum Total Validated Pipeline"
    tags: ["Sum of Total Validated Pipeline"]
  }

# Direct_OKR_Pipeline measure
  measure: Direct_OKR_Pipeline {
    type: number
    sql: SUM(
        CASE
          WHEN ${OKR_Reporting_Scope} = 'Direct OKR' THEN ${Attributed_Pipeline}
          ELSE 0
          END) ;;
    label: "Total_Attributed_Pipeline"
    description: "This attribute give details about Direct OKR Pipeline"
    tags: ["Direct OKR Pipeline"]
  }

# Direct_Pipeline_Contribution measure
  measure: Direct_Pipeline_Contribution {
    type: number
    sql: SUM(
          CASE
            WHEN ${OKR_Reporting_Scope} = 'Direct OKR' THEN ${Attributed_Pipeline}
            ELSE 0
            END))
        / (NULLIF(SUM(${Total_Validated_Pipeline}), 0.0)) ;;
    label: "Direct_Pipeline_Contribution"
    description: "This attribute give details about Direct Pipeline Contribution"
    tags: ["Direct Pipeline Contribution"]
  }

# Partner_OKR_Pipeline measure
  measure: Partner_OKR_Pipeline {
    type: number
    sql: SUM(
        CASE
          WHEN ${OKR_Reporting_Scope} = 'Partner OKR' THEN ${Attributed_Pipeline}
          ELSE 0
          END) ;;
    label: "Partner_OKR_Pipeline"
    description: "This attribute give details about Partner OKR Pipeline"
    tags: ["Partner OKR Pipeline"]
  }

# Partner_Pipeline_Contribution measure
  measure: Partner_Pipeline_Contribution {
    type: number
    sql: SUM(
          CASE
            WHEN ${OKR_Reporting_Scope} = 'Partner OKR' THEN ${Attributed_Pipeline}
            ELSE 0
            END))
        / (NULLIF(SUM(${Total_Validated_Pipeline}), 0.0)) ;;
    label: "Partner_Pipeline_Contribution"
    description: "This attribute give details about Partner Pipeline Contribution"
    tags: ["Partner Pipeline Contribution"]
  }

# Attributed_OKR_Pipeline measure
  measure: Attributed_OKR_Pipeline {
    type: number
    sql: SUM(
        CASE
          WHEN ${OKR_Reporting_Scope} IN ('Direct OKR', 'Partner OKR')
            THEN ${Attributed_Pipeline}
          ELSE CAST(NULL AS DOUBLE)
          END) ;;
    label: "Partner_OKR_Pipeline"
    description: "This attribute give details about Attributed OKR Pipeline"
    tags: ["Attributed OKR Pipeline"]
  }

# Marketing_Pipeline_Contribution measure
  measure: Marketing_Pipeline_Contribution {
    type: number
    sql: SUM(
          CASE
            WHEN ${OKR_Reporting_Scope} IN ('Direct OKR', 'Partner OKR')
              THEN ${Attributed_Pipeline}
            ELSE CAST(NULL AS DOUBLE)
            END))
        / (NULLIF(SUM(${Total_Validated_Pipeline}), 0.0)) ;;
    label: "Marketing_Pipeline_Contribution"
    description: "This attribute give details about Marketing Pipeline Contribution"
    tags: ["Marketing Pipeline Contribution"]
  }



# QSO_Date Dimension Group
  dimension_group: QSO_Date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.QSO_Date ;;
    label: "QSO Date"
    description: "the QSO Date submitted"
    tags: ["QSO Date","date"]
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
