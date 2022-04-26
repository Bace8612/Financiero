# Define the database connection to be used for this model.
connection: "finanzastest"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: finanzastest_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finanzastest_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Finanzastest"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: devops_pipeline_test2204211740 {}

explore: raw_devops_pipeline_test02 {}

explore: raw_devops_pipeline_test2204211740 {}

explore: devops_table_test2204211740 {}

explore: devops_pipeline_test02 {}

explore: raw_t_pip1 {}

explore: raw_t_pip2 {}

explore: pipetestftp001 {}

explore: raw_t_pip4 {}

explore: raw_t_pip_orac1 {}

explore: raw_t_pippostg_transf2 {}

explore: raw_t_pippostg_transf1 {}

explore: raw_tpip_postg1 {}

explore: raw_tpipcsvtransf1 {}

explore: raw_tpip_postg_recur2 {}

explore: tmanual {}

explore: t_pip1 {}

explore: tmanual2 {}

explore: t_pip2 {}

explore: t_pip3 {}

explore: t_pippostg_transf1 {}

explore: t_pip_orac1 {}

explore: t_pip4 {}

explore: tpip_postg1 {}

explore: t_pip_ftp1 {}

explore: t_pippostg_transf2 {}

explore: tpipcsvtransf1 {}

explore: tpip_postg_recur2 {}
