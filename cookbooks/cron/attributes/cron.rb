# Add one hash per cron job required
# Set the utility instance name to install each cron job on via instance_name

default[:custom_crons] = [
                          {:name => "monthly_inventory_reports",                  :time => "10 0 1 * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake accounting_reporter:monthly_inventory_reports",                       :instance_name => "worker5"},
                          {:name => "monthly_open_orders_report",                 :time => "5 0 1 * *",     :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake accounting_reporter:monthly_open_orders_report",                      :instance_name => "worker5"},
                          {:name => "monthly_shipped_counts_report",              :time => "45 0 1 * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake accounting_reporter:monthly_shipped_counts_report",                   :instance_name => "worker5"},
                          {:name => "monthly_open_purchase_orders_report",        :time => "10 0 1 * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake accounting_reporter:monthly_open_purchase_orders_report",             :instance_name => "worker5"},
                          {:name => "monthly_reprints_report",                    :time => "15 0 1 * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake accounting_reporter:monthly_reprints_report",                         :instance_name => "worker5"},
                          {:name => "monthly_client_reprints_report",             :time => "30 0 1 * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake accounting_reporter:monthly_client_reprints_report",                  :instance_name => "worker5"},

                          {:name => "calculate_discounts",                        :time => "00 1 * * 1",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing_calculator:calculate_discounts",                              :instance_name => "worker5"},
                          {:name => "billing_reports_views",                      :time => "30 1 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing_calculator:billing_reports_views",                            :instance_name => "worker5"},
                          {:name => "weekly_shipment_bill_calculation",           :time => "00 2 * * 1",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing_calculator:weekly_shipment_bill_calculation",                 :instance_name => "worker5"},
                          {:name => "weekly_account_invoice_snapshot",            :time => "00 3 * * 1",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing_calculator:weekly_account_invoice_history",                   :instance_name => "worker5"},
                          {:name => "weekly_invoice_billings_reports",            :time => "00 4 * * 1",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake billing_calculator:weekly_invoice_billings_reports",                  :instance_name => "worker5"},

                          {:name => "client_order_holds_report",                  :time => "15 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake client_reporter:client_order_holds_report",                           :instance_name => "worker5"},

                          {:name => "cleanup_sessions_table",                     :time => "00 2 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake database_cleaner:cleanup_sessions_table",                             :instance_name => "worker6"},
                          {:name => "scrub_user_data",                            :time => "15 2 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake database_cleaner:scrub_user_data",                                    :instance_name => "worker6"},

                          {:name => "reprocess_designs",                          :time => "10 * * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake design_processor:reprocess_designs",                                  :instance_name => "worker6"},
                          {:name => "requeue_missing_artwork",                    :time => "25 */1 * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake design_processor:requeue_missing_artwork",                            :instance_name => "worker6"},

                          {:name => "santaana_dhl_manifests",                     :time => "00 14 * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'dhl_shipper:dhl_manifests[Santa Ana]'",                              :instance_name => "worker4"},
                          {:name => "hebron_dhl_manifests",                       :time => "00 11 * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'dhl_shipper:dhl_manifests[Kentucky]'",                               :instance_name => "worker_k1"},
                          {:name => "retrieve_dhl_tracking_status",               :time => "00 2 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake dhl_shipper:retrieve_dhl_tracking_status",                            :instance_name => "worker5"},

                          {:name => "retrieve_fedex_tracking_status",             :time => "30 1 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake fedex_shipper:retrieve_fedex_tracking_status",                        :instance_name => "worker5"},

                          {:name => "daily_inventory_reports",                    :time => "00 6 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_reporter:daily_inventory_reports",                  :instance_name => "worker5"},

                          {:name => "reset_trailing_stock_shipments",             :time => "00 2 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:reset_trailing_stock_shipments",            :instance_name => "worker5"},
                          {:name => "stocks_with_trailing_30_days_of_shipments",  :time => "20 2 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:stocks_with_trailing_30_days_of_shipments", :instance_name => "worker5"},
                          {:name => "stocks_with_trailing_15_days_of_shipments",  :time => "30 2 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:stocks_with_trailing_15_days_of_shipments", :instance_name => "worker5"},
                          {:name => "garment_stocks_stocked",                     :time => "15 3 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:garment_stocks_stocked",                    :instance_name => "worker5"},
                          {:name => "reset_stock_open_jobs_count",                :time => "10 3 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:reset_stock_open_jobs_count",               :instance_name => "worker5"},
                          {:name => "reset_negative_stock_counts",                :time => "05 * * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:reset_negative_stock_counts",               :instance_name => "worker5"},
                          {:name => "skus_premium_cost_and_stock_check",          :time => "00 5 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:skus_premium_cost_and_stock_check",         :instance_name => "worker5"},
                          {:name => "purchase_order_history",                     :time => "00 23 * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:purchase_order_history",                    :instance_name => "worker5"},
                          {:name => "daily_inventory_stats",                      :time => "1 0 * * *",     :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:daily_inventory_stats",                     :instance_name => "worker6"},
                          {:name => "monthly_inventory_stats",                    :time => "5 0 1 * *",     :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:monthly_inventory_stats",                   :instance_name => "worker6"},
                          {:name => "update_actual_sku_costs_from_providers",     :time => "0 2 * * 5",     :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake garment_inventory_updater:update_actual_sku_costs_from_providers",    :instance_name => "worker6"},

                          {:name => "intake_hold_check",                          :time => "15,45 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_hold_checker:intake_hold_check",                                :instance_name => "worker5"},
                          {:name => "production_hold_check",                      :time => "00,30 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_hold_checker:production_hold_check",                            :instance_name => "worker5"},
                          {:name => "stuck_job_check",                            :time => "00 */8 * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_hold_checker:stuck_job_check",                                  :instance_name => "worker5"},

                          {:name => "deco_orders",                                :time => "35 * * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_importer:deco_orders",                                          :instance_name => "worker5"},
                          {:name => "zazzle_orders",                              :time => "*/15 * * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_importer:zazzle_orders",                                        :instance_name => "worker5"},
                          {:name => "shopify_orders",                             :time => "10,40 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_importer:shopify_orders",                                       :instance_name => "worker5"},
                          {:name => "shipstation_orders",                         :time => "00 */2 * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_importer:ship_station_orders",                                  :instance_name => "worker5"},

                          {:name => "daily_artwork_missing_report",               :time => "0 13 * * 1-5",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_issue_reporter:daily_artwork_missing_report",                   :instance_name => "worker5"},
                          {:name => "daily_address_issue_report",                 :time => "15 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_issue_reporter:daily_address_issue_report",                     :instance_name => "worker5"},
                          {:name => "daily_sku_issue_report",                     :time => "05 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_issue_reporter:daily_sku_issue_report",                         :instance_name => "worker5"},
                          {:name => "santaana_order_holds_report_morning",        :time => "45 6 * * 1-5",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'order_issue_reporter:order_holds_report[1]'",                        :instance_name => "worker5"},
                          {:name => "santaana_order_holds_report_afternoon",      :time => "30 13 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'order_issue_reporter:order_holds_report[1]'",                        :instance_name => "worker5"},
                          {:name => "hebron_order_holds_report_morning",          :time => "45 3 * * 1-5",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'order_issue_reporter:order_holds_report[38]'",                       :instance_name => "worker_k1"},
                          {:name => "hebron_order_holds_report_afternoon",        :time => "30 10 * * 1-5", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'order_issue_reporter:order_holds_report[38]'",                       :instance_name => "worker_k1"},
                          {:name => "daily_no_activity_report",                   :time => "00 6 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_issue_reporter:daily_no_activity_report",                       :instance_name => "worker5"},
                          {:name => "santaana_packaged_not_shipped_report",       :time => "30 5 * * 1-5",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'order_issue_reporter:packaged_not_shipped_report[1]'",               :instance_name => "worker5"},
                          {:name => "hebron_packaged_not_shipped_report",         :time => "30 2 * * 1-5",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'order_issue_reporter:packaged_not_shipped_report[38]'",              :instance_name => "worker_k1"},

                          {:name => "order_attribute_refresh",                    :time => "00 */4 * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake order_updater:order_attribute_refresh",                               :instance_name => "worker6"},

                          {:name => "santaana_osm_manifests",                     :time => "05 14 * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'osm_shipper:osm_manifests[Santa Ana]'",                              :instance_name => "worker4"},
                          {:name => "hebron_osm_manifests",                       :time => "05 11 * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'osm_shipper:osm_manifests[Kentucky]'",                               :instance_name => "worker_k1"},
                          {:name => "retrieve_osm_tracking_status",               :time => "30 3 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake osm_shipper:retrieve_osm_tracking_status",                            :instance_name => "worker5"},

                          {:name => "weekly_print_volume_report",                 :time => "10 5 * * 1",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_reporter:weekly_print_volume_report",                 :instance_name => "worker5"},
                          {:name => "santaana_daily_production_history_report",   :time => "0 5 * * *",     :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'production_data_reporter:daily_production_history_report[1]'",       :instance_name => "worker5"},
                          {:name => "hebron_daily_production_history_report",     :time => "0 2 * * *",     :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake 'production_data_reporter:daily_production_history_report[38]'",      :instance_name => "worker_k1"},
                          {:name => "shift_efficiency_notification",              :time => "*/10 * * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_reporter:shift_efficiency_notification",              :instance_name => "worker_k1"},

                          {:name => "overall_dashboard_views",                    :time => "*/30 * * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:overall_dashboard_views",                     :instance_name => "worker5"},
                          {:name => "todays_dashboard_views",                     :time => "*/15 * * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:todays_dashboard_views",                      :instance_name => "worker5"},
                          {:name => "print_activity_report_views",                :time => "*/5 * * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:print_activity_report_views",                 :instance_name => "worker5"},
                          {:name => "ship_activity_report_views",                 :time => "*/5 * * * *",   :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:ship_activity_report_views",                  :instance_name => "worker5"},
                          {:name => "user_stats_data",                            :time => "30 3 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:user_stats_data",                             :instance_name => "worker5"},
                          {:name => "update_yesterday_efficiency_histories",      :time => "00 */12 * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:update_yesterday_efficiency_histories",       :instance_name => "worker_k1"},
                          {:name => "after_shift_data_update",                    :time => "*/10 * * * *",  :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake production_data_updater:after_shift_data_update",                     :instance_name => "worker_k1"},

                          {:name => "background_job_monitor",                     :time => "15 * * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake server_monitor:background_job_monitor",                               :instance_name => "worker6"},

                          {:name => "deco_shipments",                             :time => "17,47 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake shipment_notifier:deco_shipments",                                    :instance_name => "worker5"},
                          {:name => "shopify_shipments",                          :time => "19,49 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake shipment_notifier:shopify_shipments",                                 :instance_name => "worker5"},
                          {:name => "ship_station_shipments",                     :time => "18,48 * * * *", :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake shipment_notifier:ship_station_shipments",                            :instance_name => "worker5"},

                          {:name => "retrieve_ups_tracking_status",               :time => "00 3 * * *",    :command => "cd /data/dj/current && RAILS_ENV=production bundle exec rake ups_shipper:retrieve_ups_tracking_status",                            :instance_name => "worker5"}
                        ]