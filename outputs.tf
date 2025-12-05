output "alb_dns_name" {
  description = "ALB DNS name"
  value       = aws_lb.web_alb.dns_name
}

output "sns_topic_arn" {
  description = "SNS topic ARN for alerts"
  value       = aws_sns_topic.alerts.arn
}
