<?php

header("Content-type: text/plain");

require_once("vendor/autoload.php");

$config = (object) parse_ini_file("config.ini", true);

$endpoint = (object) $config->RETS;
$destination = (object) $config->destinations;

$config = new \PHRETS\Configuration;
$config->setLoginUrl($endpoint->url)->setUsername($endpoint->user)->setPassword($endpoint->pass)->setRetsVersion($endpoint->version);
$rets = new \PHRETS\Session($config);

if (!$connect) {
	die($rets->Error());
}

$Resources = $rets->GetResourcesMetadata();
foreach($Resources as $ResourceName=>$Resource) {
	$classes = $rets->GetClassesMetadata($ResourceName);
	foreach ($classes as $class) {
		$rets_metadata = $rets->GetTableMetadata($ResourceName, $class['ClassName']);
		$table_name = ( $ResourceName == $class['ClassName'] ) ? $class['ClassName'] : $ResourceName."_".$class['ClassName'];
		$sql = create_table_sql_from_metadata($table_name, $rets_metadata, $Resources[$ResourceName]['KeyField']);
		//$filename = $db->name.'_CCMLS_'.$endpoint->version.'_'.$table_name.'.sql';
		$filename = $table_name.'.sql';
		
		file_put_contents($destination->sql.$filename, $sql);
		echo $sql . "\n";
	}
}

/* Function to re-create table structre from RETS metadata. */
function create_table_sql_from_metadata($table_name, $rets_metadata, $KeyField) {
	global $endpoint;
	$sql = "CREATE TABLE {$table_name} (\n";
	foreach ($rets_metadata as $field) {
		$sql .= "  `".$field['SystemName']."`";
		if ($field['Interpretation'] == "LookupMulti") {
			$sql .= " TEXT";
		} elseif ($field['Interpretation'] == "Lookup") {
			$sql .= " VARCHAR(50)";
		} elseif ($field['DataType'] == "Int" || $field['DataType'] == "Small" || $field['DataType'] == "Tiny") {
			$sql .= " INT({$field['MaximumLength']})";
		} elseif ($field['DataType'] == "Long") {
			$sql .= " BIGINT({$field['MaximumLength']})";
		} elseif ($field['DataType'] == "DateTime") {
			$sql .= " DATETIME default '0000-00-00 00:00:00' not null";
		} elseif ($field['DataType'] == "Character" && $field['MaximumLength'] <= 255) {
			$sql .= " VARCHAR({$field['MaximumLength']})";
		} elseif ($field['DataType'] == "Character" && $field['MaximumLength'] > 255) {
			$sql .= " TEXT";
		} elseif ($field['DataType'] == "Decimal") {
			$pre_point = ($field['MaximumLength'] - $field['Precision']);
			$post_point = !empty($field['Precision']) ? $field['Precision'] : 0;
			$sql .= " DECIMAL({$field['MaximumLength']},{$post_point})";
		} elseif ($field['DataType'] == "Boolean") {
			$sql .= " CHAR(1)";
		} elseif ($field['DataType'] == "Date") {
			$sql .= " DATE default '0000-00-00' not null";
		} elseif ($field['DataType'] == "Time") {
			$sql .= " TIME default '00:00:00' not null";
		} else {
			$sql .= " VARCHAR(255)";
		}
		$sql .= " COMMENT '".addslashes($field['LongName'])."'";
		$sql .= ",\n";
	}
	$sql .= "  PRIMARY KEY(`".$KeyField."`)\n";
	//$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='RETS ".$endpoint->version."';\n\n";
	$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=latin1;\n\n";
	return $sql;
}

?>