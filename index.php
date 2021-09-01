<?php

# Get hostname
$hostname = gethostname();

# Set default one if an error happened
if(!$hostname){
	$hostname = "John Smith";
}

# Print hostname
echo "Hello, I'm $hostname";
