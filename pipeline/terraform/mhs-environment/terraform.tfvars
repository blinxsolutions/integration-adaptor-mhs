region = "eu-west-2"
environment_id = "paco24-int-mhs"
mhs_vpc_cidr_block = "10.0.0.0/16"
build_id = "7ff606307e6215d8a34b4ee9a201aa1f4690f340"
# placeholder
supplier_vpc_id = "vpc-04d196e94be4d2217"
# placeholder
opentest_vpc_id = "vpc-04d196e94be4d2217"
internal_root_domain = "internal.somedomainyoucontrol.com"
mhs_sync_async_table_read_capacity = 5
mhs_sync_async_table_write_capacity = 5
mhs_outbound_service_minimum_instance_count = 1
mhs_outbound_service_maximum_instance_count = 5
mhs_outbound_spineroutelookup_verify_certificate = "true"
mhs_inbound_service_minimum_instance_count = 1
mhs_inbound_service_maximum_instance_count = 5
mhs_route_service_minimum_instance_count = 1
mhs_route_service_maximum_instance_count = 5
task_role_arn = "arn:aws:iam::533267356181:role/paco24-int-nhs-mhs-ecs-task"
execution_role_arn = "arn:aws:iam::533267356181:role/paco24-int-nhs-mhs-ecs-task"
task_scaling_role_arn = "arn:aws:iam::533267356181:role/paco24-int-nhs-mhs-ecs-task"
ecr_address = "533267356181.dkr.ecr.eu-west-2.amazonaws.com"
mhs_log_level = "DEBUG"
mhs_resynchroniser_max_retries = "3"
mhs_resynchroniser_interval = "5m"
mhs_state_table_read_capacity = 5
mhs_state_table_write_capacity = 5
mhs_spine_org_code = "ORG123"
inbound_queue_brokers = "amqps://b-bdbff81b-16b9-4e22-b865-6605d7919739.mq.eu-west-2.amazonaws.com:5671"
# inbound_queue_name = "inbound"
inbound_queue_name = "paco24-int-nhs-mhs-queue-broker"
inbound_queue_username_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/inbound_queue/username-1Qgy17"
inbound_queue_password_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/inbound_queue/password-XNXvN8"
# party key YGMQJ-824020 
# ASID 200000002268
party_key_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/party-key-p08DDF"
client_cert_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/client_cert-Q2oyZa"
client_key_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/client_key-jnRd5x"
ca_certs_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/ca_certs-VmBqHl"
outbound_alb_certificate_arn = "arn:aws:acm:eu-west-2:533267356181:certificate/180a18d6-4f2e-4522-b6f3-669dd102c864"
route_alb_certificate_arn = "arn:aws:acm:eu-west-2:533267356181:certificate/180a18d6-4f2e-4522-b6f3-669dd102c864"
spineroutelookup_service_sds_url = "https://sds-url"
spineroutelookup_service_search_base = "ou=services,o=nhs"
elasticache_node_type = "cache.t3.micro"
mhs_forward_reliable_endpoint_url = "https://spine-endpoint"
# mhs_outbound_routing_lookup_method = "SPINE_ROUTE_LOOKUP"
mhs_outbound_routing_lookup_method = "SDS_API"
mhs_sds_api_url = "https://int.api.service.nhs.uk/spine-directory/FHIR/R4"
mhs_sds_api_key_arn = "arn:aws:secretsmanager:eu-west-2:533267356181:secret:paco24/int/nhs-mhs/sds-api-key-Zed2Qf"