<?php


echo filter_input(INPUT_SERVER, 'HTTP_NOTE', FILTER_DEFAULT) ?? null;
echo '<br><br><span>IP-REAL => ' . (filter_input(INPUT_SERVER, 'HTTP_CLIENT_IP', FILTER_DEFAULT) ?? null) . '</span>';
echo '<br><span>IP-CONTAINER => ' . (filter_input(INPUT_SERVER, 'REMOTE_ADDR', FILTER_DEFAULT) ?? null) . '</span>';