<?php
$envFile = dirname(dirname(__DIR__)) . DIRECTORY_SEPARATOR . '.env';

if (is_file($envFile)) {
    if (!is_readable($envFile)) {
        throw new RuntimeException('The project .env file is not readable.');
    }

    $envLines = file($envFile, FILE_IGNORE_NEW_LINES);
    if ($envLines === false) {
        throw new RuntimeException('Unable to read the project .env file.');
    }

    foreach ($envLines as $lineNumber => $line) {
        $line = trim($line);
        if ($line === '' || $line[0] === '#') {
            continue;
        }

        $separator = strpos($line, '=');
        if ($separator === false) {
            throw new RuntimeException('Invalid .env entry on line ' . ($lineNumber + 1) . '.');
        }

        $name = trim(substr($line, 0, $separator));
        $value = trim(substr($line, $separator + 1));
        if (!preg_match('/^[A-Za-z_][A-Za-z0-9_]*$/', $name)) {
            throw new RuntimeException('Invalid .env variable name on line ' . ($lineNumber + 1) . '.');
        }

        if (strlen($value) >= 2
            && (($value[0] === '"' && substr($value, -1) === '"')
                || ($value[0] === "'" && substr($value, -1) === "'"))
        ) {
            $value = substr($value, 1, -1);
        }

        if (getenv($name) === false) {
            putenv($name . '=' . $value);
        }
    }
}

$environment = strtolower(trim((string) (getenv('APP_ENV') ?: 'local')));

if (in_array($environment, array('production', 'prod', 'live'), true)) {
    $databaseConfig = array(
        'DB_HOST' => getenv('DB_HOST'),
        'DB_USER' => getenv('DB_USER'),
        'DB_PASS' => getenv('DB_PASS'),
        'DB_NAME' => getenv('DB_NAME'),
    );

    foreach ($databaseConfig as $name => $value) {
        if ($value === false) {
            throw new RuntimeException($name . ' must be set in the production environment.');
        }
    }
} elseif (in_array($environment, array('local', 'development', 'dev'), true)) {
    $databaseConfig = array(
        'DB_HOST' => getenv('DB_HOST') !== false ? getenv('DB_HOST') : 'localhost',
        'DB_USER' => getenv('DB_USER') !== false ? getenv('DB_USER') : 'root',
        'DB_PASS' => getenv('DB_PASS') !== false ? getenv('DB_PASS') : '',
        'DB_NAME' => getenv('DB_NAME') !== false ? getenv('DB_NAME') : 'mocco_db',
    );
} else {
    throw new RuntimeException('Unsupported APP_ENV value: ' . $environment);
}

foreach ($databaseConfig as $name => $value) {
    define($name, $value);
}

// display errors
// error_reporting(E_ALL);
// ini_set('display_errors', 1);
