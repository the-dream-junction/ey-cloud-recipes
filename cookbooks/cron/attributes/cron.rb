# Add one hash per cron job required
# Set the utility instance name to install each cron job on via instance_name

default[:custom_crons] = [{:name => "woocommerce_orders", :time => "40 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:woocommerce_orders", :instance_name => "worker3"},
                          {:name => "deco_orders", :time => "35 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:deco_orders", :instance_name => "worker3"},
                          {:name => "maker_shopify_orders_monday", :time => "00 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:maker_shopify_orders", :instance_name => "worker3"},
                          {:name => "maker_shopify_orders_weekdays", :time => "25 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:maker_shopify_orders", :instance_name => "worker3"},
                          {:name => "represent_shopify_orders_monday", :time => "10 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:represent_shopify_orders", :instance_name => "worker3"},
                          {:name => "represent_shopify_orders_weekdays", :time => "35 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:represent_shopify_orders", :instance_name => "worker3"},
                          {:name => "shopify_orders_monday", :time => "20 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:shopify_orders", :instance_name => "worker3"},
                          {:name => "shopify_orders_weekdays", :time => "45 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:shopify_orders", :instance_name => "worker3"},
                          {:name => "ship_station_orders_monday", :time => "15 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:ship_station_orders", :instance_name => "worker3"},
                          {:name => "ship_station_orders_weekdays", :time => "40 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:ship_station_orders", :instance_name => "worker3"},
                          {:name => "purchase_order_history", :time => "00 23 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:purchase_order_history", :instance_name => "worker3"},
                          {:name => "billing_reports_views", :time => "00 4 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:billing_reports_views", :instance_name => "worker3"},
                          {:name => "calculate_discounts", :time => "00 3 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:calculate_discounts", :instance_name => "worker3"},
                          {:name => "calculate_represent_discounts", :time => "15 3 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:calculate_represent_discounts", :instance_name => "worker3"},
                          {:name => "overall_dashboard_views", :time => "*/45 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:overall_dashboard_views", :instance_name => "worker3"},
                          {:name => "todays_dashboard_views", :time => "*/21 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:todays_dashboard_views", :instance_name => "worker3"},
                          {:name => "print_activity_report_views", :time => "*/10 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:print_activity_report_views", :instance_name => "worker3"},
                          {:name => "ship_activity_report_views", :time => "*/12 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:ship_activity_report_views", :instance_name => "worker3"},
                          {:name => "user_stats_data", :time => "30 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:user_stats_data", :instance_name => "worker3"},
                          {:name => "skus_with_trailing_30_days_of_shipments", :time => "20 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_with_trailing_30_days_of_shipments", :instance_name => "worker3"},
                          {:name => "skus_with_trailing_15_days_of_shipments", :time => "30 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_with_trailing_15_days_of_shipments", :instance_name => "worker3"},
                          {:name => "skus_priority", :time => "40 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_priority", :instance_name => "worker3"},
                          {:name => "skus_stocked", :time => "15 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_stocked", :instance_name => "worker3"},
                          {:name => "skus_premium_cost", :time => "00 5 * * 7", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_premium_cost", :instance_name => "worker3"},
                          {:name => "reset_trailing_stock_shipments", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:reset_trailing_stock_shipments", :instance_name => "worker3"},
                          {:name => "reset_negative_stock_counts", :time => "05 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:reset_negative_stock_counts", :instance_name => "worker3"},
                          {:name => "reset_open_jobs_count", :time => "10 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:reset_open_jobs_count", :instance_name => "worker3"},
                          {:name => "intake_hold_check", :time => "20,50 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:intake_hold_check", :instance_name => "worker3"},
                          {:name => "stuck_job_check", :time => "00 */8 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:stuck_job_check", :instance_name => "worker3"},
                          {:name => "retrieve_fedex_fims_tracking_status", :time => "00 1 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_fedex_fims_tracking_status", :instance_name => "worker3"},
                          {:name => "retrieve_fedex_tracking_status", :time => "30 1 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_fedex_tracking_status", :instance_name => "worker3"},
                          {:name => "retrieve_dhl_tracking_status", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_dhl_tracking_status", :instance_name => "worker3"},
                          {:name => "retrieve_ups_tracking_status", :time => "00 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_ups_tracking_status", :instance_name => "worker3"},
                          {:name => "rad_shipments", :time => "15,45 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:rad_shipments", :instance_name => "worker3"},
                          {:name => "deco_shipments", :time => "17,47 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:deco_shipments", :instance_name => "worker3"},
                          {:name => "maker_shipments", :time => "18,48 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:maker_shipments", :instance_name => "worker3"},
                          {:name => "shopify_shipments", :time => "19,49 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:shopify_shipments", :instance_name => "worker3"},
                          {:name => "rep_athletics_shipments", :time => "20 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:rep_athletics_shipments", :instance_name => "worker3"},
                          {:name => "woocommerce_shipments", :time => "21 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:woocommerce_shipments", :instance_name => "worker3"},
                          {:name => "ship_station_shipments", :time => "22 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:ship_station_shipments", :instance_name => "worker3"},
                          {:name => "dhl_claims_report", :time => "45 9 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:dhl_claims_report", :instance_name => "worker3"},
                          {:name => "packaged_not_shipped_report", :time => "30 5 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:packaged_not_shipped_report", :instance_name => "worker3"},
                          {:name => "client_order_holds_report", :time => "15 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:client_order_holds_report", :instance_name => "worker3"},
                          {:name => "monthly_inventory_report", :time => "0 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_inventory_report", :instance_name => "worker3"},
                          {:name => "monthly_open_orders_report", :time => "5 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_open_orders_report", :instance_name => "worker3"},
                          {:name => "monthly_open_purchase_orders_report", :time => "10 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_open_purchase_orders_report", :instance_name => "worker3"},
                          {:name => "monthly_reprints_report", :time => "15 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_reprints_report", :instance_name => "worker3"},
                          {:name => "monthly_client_reprints_report", :time => "30 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_client_reprints_report", :instance_name => "worker3"},
                          {:name => "monthly_shipped_counts_report", :time => "45 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_shipped_counts_report", :instance_name => "worker3"},
                          {:name => "weekly_operator_reprints_report", :time => "10 5 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:weekly_operator_reprints_report", :instance_name => "worker3"},
                          {:name => "daily_artwork_missing_report", :time => "0 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_artwork_missing_report", :instance_name => "worker3"},
                          {:name => "daily_address_issue_report", :time => "15 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_address_issue_report", :instance_name => "worker3"},
                          {:name => "daily_sku_issue_report", :time => "05 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_sku_issue_report", :instance_name => "worker3"},
                          {:name => "daily_production_history_report", :time => "0 5 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_production_history_report", :instance_name => "worker3"},
                          {:name => "weekly_dhl_billings", :time => "00 9 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:weekly_dhl_billings_report", :instance_name => "worker3"},
                          {:name => "missing_shipments", :time => "45 5 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:missing_shipments", :instance_name => "worker3"},
                          {:name => "order_holds_report_morning", :time => "45 6 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:order_holds_report", :instance_name => "worker3"},
                          {:name => "order_holds_report_afternoon", :time => "30 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:order_holds_report", :instance_name => "worker3"},
                          {:name => "dhl_manifests", :time => "00 14 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'correlate:dhl_manifests[Santa Ana]'", :instance_name => "worker4"},
                          {:name => "gooten_manifest", :time => "10 14 1-6 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'correlate:gooten_dhl_manifest'", :instance_name => "worker4"},
                          {:name => "cleanup_sessions_table", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake cleanup:cleanup_sessions_table", :instance_name => "worker4"},
                          {:name => "cleanup_activities_table", :time => "00 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake cleanup:cleanup_activities_table", :instance_name => "worker4"},
                          {:name => "restart_delayed_jobs_worker3", :time => "00 */5 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bin/delayed_job -n 5 --queues=webhook_notification,generate_pos,order_cost_calculation,mailers restart", :instance_name => "worker3"},
                          {:name => "restart_delayed_jobs_worker2", :time => "00 */4 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bin/delayed_job -n 5 --queues=artwork_download,art_conversion,ship_label_generation,thumbnail_download restart", :instance_name => "worker4"}]
