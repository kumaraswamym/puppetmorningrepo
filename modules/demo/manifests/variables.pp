class demo::variables {
  $var_local = "123456789"
  notify { " ${var_top} is your top scope var": }
  notify { " ${var_node} is your node scope var": }
  notify { " ${var_local} is your class scope var": }
}
