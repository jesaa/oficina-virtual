<?php namespace ProcessWire;

/**
 * /site/templates/_func.php
 * 
 * Example of shared functions used by template files
 *
 * This file is currently included by _init.php 
 *
 * For more information see README.txt
 *
 */


/**
 * Given a group of pages, render a simple <ul> navigation
 *
 * This is here to demonstrate an example of a simple shared function.
 * Usage is completely optional.
 *
 * @param PageArray $items
 * @return string
 *
 */
function renderNav(PageArray $items) {

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// render markup for each navigation item as an <li>
		if($item->id == wire('page')->id) {
			// if current item is the same as the page being viewed, add a "current" class to it
			$out .= "<li class='current'>";
		} else {
			// otherwise just a regular list item
			$out .= "<li>";
		}

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a> ";

		// if the item has summary text, include that too
		if($item->summary) $out .= "<div class='summary'>$item->summary</div>";

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='nav'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}



/**
 * Given a group of pages, render a <ul> navigation tree
 *
 * This is here to demonstrate an example of a more intermediate level
 * shared function and usage is completely optional. This is very similar to
 * the renderNav() function above except that it can output more than one
 * level of navigation (recursively) and can include other fields in the output.
 *
 * @param array|PageArray $items
 * @param int $maxDepth How many levels of navigation below current should it go?
 * @param string $fieldNames Any extra field names to display (separate multiple fields with a space)
 * @param string $class CSS class name for containing <ul>
 * @return string
 *
 */
function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav') {

	// if we were given a single Page rather than a group of them, we'll pretend they
	// gave us a group of them (a group/array of 1)
	if($items instanceof Page) $items = array($items);

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class to it
		$out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a>";

		// if there are extra field names specified, render markup for each one in a <div>
		// having a class name the same as the field name
		if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
			$value = $item->get($fieldName);
			if($value) $out .= " <div class='$fieldName'>$value</div>";
		}

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children 
		if($item->hasChildren() && $maxDepth) {
			if($class == 'nav') $class = 'nav nav-tree';
			$out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class);
		}

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='$class'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}


function parteHora($hora){    
		$horaSplit = explode(":", $hora);

		if( count($horaSplit) < 3 )
		{
			$horaSplit[2] = 0;
		}

		return $horaSplit;
	}
	
 function sumarHoras($time1,$time2){
            list($hour1, $min1) = parteHora($time1);
            list($hour2, $min2) = parteHora($time2);
            
            $hour=$hour1+$hour2;
            $min=$min1+$min2;
            if($min>60){
                $res=floor($min/60);
                $min=$min%60;
            }else 
                $res=0;
            $hour+=$res;
            return $hour.':'.$min;
  }  

  function getDaysAvailable($separator = '-', $currentMonth, $currentYear){
  	$calDaysMonth = cal_days_in_month(CAL_GREGORIAN, intval($currentMonth), intval($currentYear));

  	for($x=1;$x<=$calDaysMonth;$x++){ 
  		if($currentMonth>intval(date('m'))) break;
  		if($x<10)
  			$x='0'.$x;

  		$dayWeekend=date('w', strtotime(date($currentYear.'-'.$currentMonth.'-'.$x)));

  		if($separator=='-')
  			$format=date($currentYear.'-'.$currentMonth.'-'.$x);
  		else
  			$format=date($x.'/'.$currentMonth.'/'.$currentYear);


  		if($dayWeekend>0 && $dayWeekend<6){
  			$allDaysAvailable[]=$format;
  		}

  		if($page->urlSegment && $currentMonth==intval(date('m')) && $x==intval(date('d'))) break;

  		if($currentMonth==date('m') && $x==intval(date('d'))) break;

  	} 

  	return $allDaysAvailable;

  }

  function getHoursOutOffice($usr, $arrayDaysAvailable){
  	$totalF=0;
  	foreach($usr->children() as $userTime){
        if($userTime->fechaIn && $userTime->fechaFi){
            $horaI=gmdate("H:i:s", strtotime($userTime->horaI));
            $horaF=gmdate("H:i:s", strtotime($userTime->horaF));
            $fechaF=gmdate("Y-m-d", $userTime->getUnformatted("fechaFi"));
            $fechaI=gmdate("Y-m-d", $userTime->getUnformatted("fechaIn"));
            if (in_array($fechaI, $arrayDaysAvailable)) {
                 $horaTF=$fechaF.' '.$horaF;
                $horaTI=$fechaI.' '.$horaI;
                $horaF=(strtotime($horaTF)-strtotime($horaTI))/3600;
                $HoursOutOffice+=$horaF; 
            }else{
              continue;
            }
            
        }
        
    }

    foreach(wire('pages')->find("template=permiso, id_per=$user->id, aprobado=1") as $userTime){
        if($userTime->fechaPerm){
            $fechaPermiso=explode("-", $userTime->fechaPerm);
            $fechaF=gmdate("Y-m-d", $fechaPermiso[1]);
            $fechaI=gmdate("Y-m-d", $fechaPermiso[0]);
            if (in_array($fechaI, $arrayDaysAvailable)) {
                 $horaF=($fechaPermiso[1]-$fechaPermiso[0])/3600;
                 $HoursOutOffice+=$horaF;
            }else{
              continue;
            }
            
        }
        
    }

    return round($HoursOutOffice, 2);
  }
