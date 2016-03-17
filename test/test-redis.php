<?php 
$redis = new Redis(); 
$redis->connect('redis',6379); 
$redis->set('key','your redis is running well'); 
echo 'After set data , the value of key is :'.$redis->get('key'); 
?>
