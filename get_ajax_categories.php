<?php
	$ch = curl_init();
	$options = array('draw_ajax_categories' => true);
	$curl_options = array(
	    CURLOPT_URL => 'http://590.ua',
	    CURLOPT_HEADER => false,
	    CURLOPT_POSTFIELDS => $options,
	    CURLOPT_RETURNTRANSFER => TRUE,
	);

	curl_setopt_array($ch, $curl_options);
	$response = curl_exec($ch);
	curl_close($ch);
	print($response);
?>