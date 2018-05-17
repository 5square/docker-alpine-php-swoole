<?php

$http = new swoole_http_server('0.0.0.0', 9501);

echo "Swoole HTTP server started, listening on port 9501\n";

$http->on('request', function ($request, $response) {
    echo "request received from " . $request->server["remote_addr"] . "\n";
    $response->header('Content-Type', 'text/html; charset=utf-8');
    $response->end('<h1>Hello Swoole. #' . rand(1000, 9999) . '</h1>');
});

$http->start();