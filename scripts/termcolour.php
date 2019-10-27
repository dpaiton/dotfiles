#!/usr/bin/php
<?php
// Terminal Colour 1.0
// Copyright Rob Allen, 2009
// License: http://akrabat.com/license/new-bsd
// Email me:  rob@akrabat.com
include dirname(__FILE__) . '/TerminalColour.php';

process($argc, $argv);
exit;

function process($argc, $argv)
{
    if($argc == 1) {
        echo <<<EOT
TerminalColour: Set the background colour of a Terminal.app window 
USAGE: 
    1. termcolour.php {r} {g} {b} 
        ({r}, {g}, {b} are between 0 and 255)
    2. termcolour.php {hexvalue}
        ({hexvalue} assumed to be from 000 to fff or 00000 to ffffff)


EOT;
        exit;
    }
    
    $tc = new TerminalColour();
    $colourLookup = $tc->getLookupColours();
    $serverColours = array(
        'dpaiton@redwood1.dyn.berkeley.edu' => '23729b',
        'dpaiton@redwood2.dyn.berkeley.edu' => '20231F',
        'dpaiton@bdd7.redwoodx.berkeley.edu' => '00727B',
    );
    $tc->addToLookupColours($serverColours);
    
    if($argc == 4) {
        // called with three arguments - treat as rgb values (0-255)
        array_shift($argv); // remove name of script
        $tc->setTerminalColour($argv);
    }
    
    if($argc == 2) {
        // called with one argument - either a lookup or a hex value
        $tc->setTerminalColour($argv[1]);
    }
}

