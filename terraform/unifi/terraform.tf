provider "unifi" {
  username       = "ar23LPM8bFza9HRM"                                                                                     # var.unifi_username
  password       = "pB6.c7vhu_GU9FMNgjk_uXW_Pq-N_J2ku*QQYncq_HaYUp.HKHtPzuWj*iDYGsbqyXxabCC3g*6B!x36gyfeR-x7*GNM-U84nbWT" # var.unifi_password
  api_url        = local.api_url
  allow_insecure = local.insecure
}
