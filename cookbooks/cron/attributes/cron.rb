# Add one hash per cron job required
# Set the utility instance name to install each cron job on via instance_name

default[:custom_crons] = [{:name => "deco_orders", :time => "35 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:deco_orders", :instance_name => "worker1"},
                          {:name => "maker_shopify_orders_monday", :time => "00 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:maker_shopify_orders", :instance_name => "worker1"},
                          {:name => "maker_shopify_orders_weekdays", :time => "25 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:maker_shopify_orders", :instance_name => "worker1"},
                          {:name => "represent_shopify_orders_monday", :time => "10 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:represent_shopify_orders", :instance_name => "worker1"},
                          {:name => "represent_shopify_orders_weekdays", :time => "35 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:represent_shopify_orders", :instance_name => "worker1"},
                          {:name => "shopify_orders_monday", :time => "20 12,13,14,15,16,17,18 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:shopify_orders", :instance_name => "worker1"},
                          {:name => "shopify_orders_weekdays", :time => "45 * * * 2-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake import:shopify_orders", :instance_name => "worker1"},
                          {:name => "purchase_order_history", :time => "00 23 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:purchase_order_history", :instance_name => "worker1"},
                          {:name => "billing_reports_views", :time => "00 4,23 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:billing_reports_views", :instance_name => "worker1"},
                          {:name => "calculate_discounts", :time => "00 3 * * 1", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:calculate_discounts", :instance_name => "worker1"},
                          {:name => "dashboard_views", :time => "05,35 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:dashboard_views", :instance_name => "worker1"},
                          {:name => "activity_report_views", :time => "*/6 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:activity_report_views", :instance_name => "worker1"},
                          {:name => "skus_with_trailing_30_days_of_shipments", :time => "20 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_with_trailing_30_days_of_shipments", :instance_name => "worker1"},
                          {:name => "skus_with_trailing_15_days_of_shipments", :time => "30 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_with_trailing_15_days_of_shipments", :instance_name => "worker1"},
                          {:name => "skus_priority", :time => "40 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_priority", :instance_name => "worker1"},
                          {:name => "skus_stocked", :time => "15 4 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_stocked", :instance_name => "worker1"},
                          {:name => "skus_premium_cost", :time => "00 5 * * 7", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:skus_premium_cost", :instance_name => "worker1"},
                          {:name => "reset_trailing_stock_shipments", :time => "00 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:reset_trailing_stock_shipments", :instance_name => "worker1"},
                          {:name => "stocks_with_trailing_90_days_of_shipments", :time => "10 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:stocks_with_trailing_90_days_of_shipments", :instance_name => "worker1"},
                          {:name => "stocks_with_trailing_30_days_of_shipments", :time => "20 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:stocks_with_trailing_30_days_of_shipments", :instance_name => "worker1"},
                          {:name => "stocks_with_trailing_15_days_of_shipments", :time => "30 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:stocks_with_trailing_15_days_of_shipments", :instance_name => "worker1"},
                          {:name => "reset_open_jobs_count", :time => "45 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:reset_open_jobs_count", :instance_name => "worker1"},
                          {:name => "intake_hold_check", :time => "50 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake update:intake_hold_check", :instance_name => "worker1"},
                          {:name => "retrieve_fedex_fims_tracking_status", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_fedex_fims_tracking_status", :instance_name => "worker1"},
                          {:name => "retrieve_fedex_tracking_status", :time => "30 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_fedex_tracking_status", :instance_name => "worker1"},
                          {:name => "retrieve_dhl_tracking_status", :time => "00 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_dhl_tracking_status", :instance_name => "worker1"},
                          {:name => "retrieve_ups_tracking_status", :time => "00 4 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:retrieve_ups_tracking_status", :instance_name => "worker1"},
                          {:name => "shipments_to_orders", :time => "*/5 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:shipments_to_orders", :instance_name => "worker1"},
                          #{:name => "rad_shipments", :time => "15,45 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:rad_shipments", :instance_name => "worker1"},
                          #{:name => "deco_shipments", :time => "17,47 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:deco_shipments", :instance_name => "worker1"},
                          #{:name => "maker_shipments", :time => "18,48 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:maker_shipments", :instance_name => "worker1"},
                          #{:name => "shopify_shipments", :time => "19,49 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:shopify_shipments", :instance_name => "worker1"},
                          #{:name => "rep_athletics_shipments", :time => "20,50 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:rep_athletics_shipments", :instance_name => "worker1"},
                          #{:name => "dhl_claims_report", :time => "45 9 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:dhl_claims_report", :instance_name => "worker1"},
                          #{:name => "packaged_not_shipped_report", :time => "30 5 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:packaged_not_shipped_report", :instance_name => "worker1"},
                          #{:name => "order_holds_report", :time => "00 9 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:order_holds_report", :instance_name => "worker1"},
                          #{:name => "monthly_inventory_report", :time => "0 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_inventory_report", :instance_name => "worker1"},
                          #{:name => "monthly_open_orders_report", :time => "5 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_open_orders_report", :instance_name => "worker1"},
                          #{:name => "monthly_open_purchase_orders_report", :time => "10 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_open_purchase_orders_report", :instance_name => "worker1"},
                          #{:name => "monthly_reprints_report", :time => "15 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_reprints_report", :instance_name => "worker1"},
                          #{:name => "monthly_client_reprints_report", :time => "30 0 1 * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:monthly_client_reprints_report", :instance_name => "worker1"},
                          {:name => "daily_artwork_missing_report", :time => "0 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:daily_artwork_missing_report", :instance_name => "worker1"},
                          #{:name => "missing_shipments", :time => "45 5 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake notify:missing_shipments", :instance_name => "worker1"},
                          {:name => "restart_delayed_jobs_worker1", :time => "00 5,18 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bin/delayed_job -n 5 --queues=thumbnail_download,webhook_notification,generate_pos restart", :instance_name => "worker1"},
                          #{:name => "dhl_manifests", :time => "00 14 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake correlate:dhl_manifests", :instance_name => "worker2"},
                          {:name => "cleanup_sessions_table", :time => "00 2 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake cleanup:cleanup_sessions_table", :instance_name => "worker2"},
                          {:name => "cleanup_activities_table", :time => "00 3 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake cleanup:cleanup_activities_table", :instance_name => "worker2"},
                          {:name => "restart_delayed_jobs_worker2", :time => "00 4,17 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bin/delayed_job -n 5 --queues=artwork_download,art_conversion,artwork_redownload,ship_label_generation restart", :instance_name => "worker2"}]
