# Add one hash per cron job required
# Set the utility instance name to install each cron job on via instance_name

default[:custom_crons] = [{:name => "zazzle_orders", :time => "*/15 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:zazzle_orders", :instance_name => "worker5"},
                          {:name => "deco_orders", :time => "35 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:deco_orders", :instance_name => "worker5"},
                          {:name => "shipstation_orders", :time => "00 */2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:ship_station_orders", :instance_name => "worker5"},
                          {:name => "shopify_orders", :time => "10,40 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:shopify_orders", :instance_name => "worker5"},
                          {:name => "purchase_order_history", :time => "00 23 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:purchase_order_history", :instance_name => "worker5"},
                          {:name => "calculate_discounts", :time => "00 1 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing:calculate_discounts", :instance_name => "worker5"},
                          {:name => "billing_reports_views", :time => "30 1 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing:billing_reports_views", :instance_name => "worker5"},
                          {:name => "weekly_shipment_bill_calculation", :time => "00 2 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing:weekly_shipment_bill_calculation", :instance_name => "worker5"},
                          {:name => "weekly_account_invoice_snapshot", :time => "00 3 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing:weekly_account_invoice_history", :instance_name => "worker5"},
                          {:name => "weekly_invoice_billings_reports", :time => "00 4 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing:weekly_invoice_billings_reports", :instance_name => "worker5"},
                          {:name => "weekly_shipment_adjustment_report", :time => "30 4 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing:shipment_adjustment_report", :instance_name => "worker5"},
                          {:name => "overall_dashboard_views", :time => "*/30 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:overall_dashboard_views", :instance_name => "worker5"},
                          {:name => "todays_dashboard_views", :time => "*/15 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:todays_dashboard_views", :instance_name => "worker5"},
                          {:name => "print_activity_report_views", :time => "*/5 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:print_activity_report_views", :instance_name => "worker5"},
                          {:name => "ship_activity_report_views", :time => "*/5 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:ship_activity_report_views", :instance_name => "worker5"},
                          {:name => "user_stats_data", :time => "30 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:user_stats_data", :instance_name => "worker5"},
                          {:name => "skus_with_trailing_30_days_of_shipments", :time => "20 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:skus_with_trailing_30_days_of_shipments", :instance_name => "worker5"},
                          {:name => "skus_with_trailing_15_days_of_shipments", :time => "30 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:skus_with_trailing_15_days_of_shipments", :instance_name => "worker5"},
                          {:name => "skus_stocked", :time => "15 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:skus_stocked", :instance_name => "worker5"},
                          {:name => "skus_premium_cost_and_stock_check", :time => "00 5 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:skus_premium_cost_and_stock_check", :instance_name => "worker5"},
                          {:name => "reset_trailing_sku_shipments", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:reset_trailing_sku_shipments", :instance_name => "worker5"},
                          {:name => "reset_negative_stock_counts", :time => "05 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:reset_negative_stock_counts", :instance_name => "worker5"},
                          {:name => "reset_open_jobs_count", :time => "10 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake inventory:reset_open_jobs_count", :instance_name => "worker5"},
                          {:name => "intake_hold_check", :time => "15,45 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:intake_hold_check", :instance_name => "worker5"},
                          {:name => "stuck_job_check", :time => "00 */8 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:stuck_job_check", :instance_name => "worker5"},
                          {:name => "retrieve_fedex_tracking_status", :time => "30 1 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_fedex_tracking_status", :instance_name => "worker5"},
                          {:name => "retrieve_ups_tracking_status", :time => "00 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_ups_tracking_status", :instance_name => "worker5"},
                          {:name => "deco_shipments", :time => "17,47 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:deco_shipments", :instance_name => "worker5"},
                          {:name => "ship_station_shipments", :time => "18,48 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:ship_station_shipments", :instance_name => "worker5"},
                          {:name => "shopify_shipments", :time => "19,49 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:shopify_shipments", :instance_name => "worker5"},
                          {:name => "dhl_claims_report", :time => "45 9 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:dhl_claims_report", :instance_name => "worker5"},
                          {:name => "packaged_not_shipped_report", :time => "30 5 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:packaged_not_shipped_report", :instance_name => "worker5"},
                          {:name => "client_order_holds_report", :time => "15 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:client_order_holds_report", :instance_name => "worker5"},
                          {:name => "monthly_open_orders_report", :time => "5 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_open_orders_report", :instance_name => "worker5"},
                          {:name => "monthly_inventory_reports", :time => "10 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_inventory_reports", :instance_name => "worker5"},
                          {:name => "monthly_open_purchase_orders_report", :time => "10 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_open_purchase_orders_report", :instance_name => "worker5"},
                          {:name => "monthly_reprints_report", :time => "15 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_reprints_report", :instance_name => "worker5"},
                          {:name => "monthly_client_reprints_report", :time => "30 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_client_reprints_report", :instance_name => "worker5"},
                          {:name => "monthly_shipped_counts_report", :time => "45 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_shipped_counts_report", :instance_name => "worker5"},
                          {:name => "daily_employee_reports", :time => "00 5 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_employee_reports", :instance_name => "worker5"},
                          {:name => "daily_inventory_reports", :time => "00 6 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_inventory_reports", :instance_name => "worker5"},
                          {:name => "shift_1_efficiency_histories", :time => "00 14 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:update_shift_1_efficiency_histories", :instance_name => "worker5"},
                          {:name => "shift_2_efficiency_histories", :time => "00 22 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:update_shift_2_efficiency_histories", :instance_name => "worker5"},
                          {:name => "shift_3_efficiency_histories", :time => "00 06 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:update_shift_3_efficiency_histories", :instance_name => "worker5"},
                          {:name => "shift_1_efficiency", :time => "00 15 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:shift_1_efficiency", :instance_name => "worker5"},
                          {:name => "shift_2_efficiency", :time => "00 23 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:shift_2_efficiency", :instance_name => "worker5"},
                          {:name => "shift_3_efficiency", :time => "00 7 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:shift_3_efficiency", :instance_name => "worker5"},
                          {:name => "weekly_operator_reprints_report", :time => "10 5 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:weekly_operator_reprints_report", :instance_name => "worker5"},
                          {:name => "daily_artwork_missing_report", :time => "0 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_artwork_missing_report", :instance_name => "worker5"},
                          {:name => "daily_address_issue_report", :time => "15 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_address_issue_report", :instance_name => "worker5"},
                          {:name => "daily_sku_issue_report", :time => "05 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_sku_issue_report", :instance_name => "worker5"},
                          {:name => "daily_production_history_report", :time => "0 5 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_production_history_report", :instance_name => "worker5"},
                          {:name => "order_holds_report_morning", :time => "45 6 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:order_holds_report", :instance_name => "worker5"},
                          {:name => "order_holds_report_afternoon", :time => "30 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:order_holds_report", :instance_name => "worker5"},
                          {:name => "dhl_manifests", :time => "00 14 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'correlate:dhl_manifests[Santa Ana]'", :instance_name => "worker4"},
                          {:name => "cleanup_sessions_table", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake cleanup:cleanup_sessions_table", :instance_name => "worker6"},
                          {:name => "scrub_user_data", :time => "15 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake cleanup:scrub_user_data", :instance_name => "worker6"},
                          {:name => "reprocess_designs", :time => "10 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake art_processing:reprocess_designs", :instance_name => "worker6"},
                          {:name => "requeue_missing_artwork", :time => "25 */1 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake art_processing:requeue_missing_artwork", :instance_name => "worker6"},
                          {:name => "background_job_monitor", :time => "15 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake service_monitoring:background_jobs", :instance_name => "worker6"},
                          {:name => "daily_inventory_stats", :time => "1 0 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake daily_rollup:daily_inventory_stats", :instance_name => "worker6"},
                          {:name => "monthly_inventory_stats", :time => "5 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake monthly_rollup:monthly_inventory_stats", :instance_name => "worker6"},
                          {:name => "ovaljet_ready_order_check", :time => "00 */1 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:ovaljet_ready_order_check", :instance_name => "worker6"},
                          {:name => "retrieve_dhl_tracking_status", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_dhl_tracking_status", :instance_name => "worker_4"},
                          {:name => "dj_east_dhl_manifests", :time => "00 11 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'correlate:dhl_manifests[Kentucky]'", :instance_name => "worker_k1"}
                        ]
