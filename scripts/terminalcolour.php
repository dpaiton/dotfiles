<?php
// Terminal Colour 1.0
// Copyright Rob Allen, 2009
// License: http://akrabat.com/license/new-bsd
// Email me:  rob@akrabat.com

class TerminalColour
{
    protected $_colour = array('255','255','255');
    
    /**
     * List of colours
     */
    protected $_colours = array(
        'white' => 'ffffff',
        'black' => '000000',
        'yellow' => 'ffff00',
        'orange' => 'ffA500',
        'red' => 'ff0000',
        'fuchsia' => 'ff00ff',
        'silver' => 'c0c0c0',
        'gray' => '808080',
        'olive' => '808000',
        'purple' => '800080',
        'maroon' => '800000',
        'aqua' => '00ffff',
        'lime' => '00ff00',
        'teal' => '008080',
        'green' => '008000',
        'blue' => '0000ff',
        'navy' => '000080',

        'aliceblue' => 'F0F8FF',
        'antiquewhite' => 'FAEBD7',
        'aquamarine' => '7FFFD4',
        'azure' => 'F0FFFF',
        'beige' => 'F5F5DC',
        'bisque' => 'FFE4C4',
        'blanchedalmond' => 'FFEBCD',
        'blueviolet' => '8A2BE2',
        'brown' => 'A52A2A',
        'burlywood' => 'DEB887',
        'cadetblue' => '5F9EA0',
        'chartreuse' => '7FFF00',
        'chocolate' => 'D2691E',
        'coral' => 'FF7F50',
        'cornflowerblue' => '6495ED',
        'cornsilk' => 'FFF8DC',
        'crimson' => 'DC1436',
        'cyan' => '00FFFF',
        'darkblue' => '00008B',
        'darkcyan' => '008B8B',
        'darkgoldenrod' => 'B8860B',
        'darkgray' => 'A9A9A9',
        'darkgreen' => '006400',
        'darkkhaki' => 'BDB76B',
        'darkmagenta' => '8B008B',
        'darkolivegreen' => '556B2F',
        'darkorange' => 'FF8C00',
        'darkorchid' => '9932CC',
        'darkred' => '8B0000',
        'darksalmon' => 'E9967A',
        'darkseagreen' => '8FBC8F',
        'darkslateblue' => '483D8B',
        'darkslategray' => '2F4F4F',
        'darkturquoise' => '00CED1',
        'darkviolet' => '9400D3',
        'deeppink' => 'FF1493',
        'deepskyblue' => '00BFFF',
        'dimgray' => '696969',
        'dodgerblue' => '1E90FF',
        'firebrick' => 'B22222',
        'floralwhite' => 'FFFAF0',
        'forestgreen' => '228B22',
        'gainsboro' => 'DCDCDC',
        'ghostwhite' => 'F8F8FF',
        'gold' => 'FFD700',
        'goldenrod' => 'DAA520',
        'greenyellow' => 'ADFF2F',
        'honeydew' => 'F0FFF0',
        'hotpink' => 'FF69B4',
        'indianred' => 'CD5C5C',
        'indigo' => '4B0082',
        'ivory' => 'FFFFF0',
        'khaki' => 'F0E68C',
        'lavender' => 'E6E6FA',
        'lavenderblush' => 'FFF0F5',
        'lawngreen' => '7CFC00',
        'lemonchiffon' => 'FFFACD',
        'lightblue' => 'ADD8E6',
        'lightcoral' => 'F08080',
        'lightcyan' => 'E0FFFF',
        'lightgoldenrodyellow' => 'FAFAD2',
        'lightgreen' => '90EE90',
        'lightgrey' => 'D3D3D3',
        'lightpink' => 'FFB6C1',
        'lightsalmon' => 'FFA07A',
        'lightseagreen' => '20B2AA',
        'lightskyblue' => '87CEFA',
        'lightslategray' => '778899',
        'lightsteelblue' => 'B0C4DE',
        'lightyellow' => 'FFFFE0',
        'limegreen' => '32CD32',
        'linen' => 'FAF0E6',
        'magenta' => 'FF00FF',
        'mediumaquamarine' => '66CDAA',
        'mediumblue' => '0000CD',
        'mediumorchid' => 'BA55D3',
        'mediumpurple' => '9370DB',
        'mediumseagreen' => '3CB371',
        'mediumslateblue' => '7B68EE',
        'mediumspringgreen' => '00FA9A',
        'mediumturquoise' => '48D1CC',
        'mediumvioletred' => 'C71585',
        'midnightblue' => '191970',
        'mintcream' => 'F5FFFA',
        'mistyrose' => 'FFE4E1',
        'moccasin' => 'FFE4B5',
        'navajowhite' => 'FFDEAD',
        'oldlace' => 'FDF5E6',
        'olivedrab' => '6B8E23',
        'orange' => 'FFA500',
        'orangered' => 'FF4500',
        'orchid' => 'DA70D6',
        'palegoldenrod' => 'EEE8AA',
        'palegreen' => '98FB98',
        'paleturquoise' => 'AFEEEE',
        'palevioletred' => 'DB7093',
        'papayawhip' => 'FFEFD5',
        'peachpuff' => 'FFDAB9',
        'peru' => 'CD853F',
        'pink' => 'FFC0CB',
        'plum' => 'DDA0DD',
        'powderblue' => 'B0E0E6',
        'rosybrown' => 'BC8F8F',
        'royalblue' => '4169E1',
        'saddlebrown' => '8B4513',
        'salmon' => 'FA8072',
        'sandybrown' => 'F4A460',
        'seagreen' => '2E8B57',
        'seashell' => 'FFF5EE',
        'sienna' => 'A0522D',
        'skyblue' => '87CEEB',
        'slateblue' => '6A5ACD',
        'slategray' => '708090',
        'snow' => 'FFFAFA',
        'springgreen' => '00FF7F',
        'steelblue' => '4682B4',
        'tan' => 'D2B48C',
        'thistle' => 'D8BFD8',
        'tomato' => 'FF6347',
        'turquoise' => '40E0D0',
        'violet' => 'EE82EE',
        'wheat' => 'F5DEB3',
        'whitesmoke' => 'F5F5F5',
        'yellowgreen' => '9ACD32',
    );
    

    /**
     * Set the colour of the topmost Terminal window using AppleScript
     *
     * If $fgColour is null, then automatically use either black or
     * white based on brightness of $bgColour.
     *
     * @param array|string $bgColour
     * @param array|string $fgColour
     * @return array
     */
    function setTerminalColour($bgColour=null, $fgColour=null) 
    {
        // background colour
        if(!is_null($bgColour)) {
            $this->setColour($bgColour);
        }
        $bgColour = $this->getColour();
        
        // convert from 8 bit colour numbers to 16 bit ones
        $bgColour = $this->convertTo16bit($bgColour);

        // foreground colour            
        if($fgColour === null) {
            $fgColour = $this->getFgColour($bgColour);
        } else {
            $fgColour = $this->convertColourToArray($fgColour);
        }
        
        // set Terminal's colours
        $bgColour = implode(',', $bgColour);
        $fgColour = implode(',', $fgColour);
    
        system("osascript -e 'tell application \"Terminal\"
            set targetWindow to window 1
            set background color of targetWindow to {" . $bgColour . "}
            set cursor color of targetWindow to {" . $fgColour . "}
            set normal text color of targetWindow to {" . $fgColour . "}
            set bold text color of targetWindow to {" . $fgColour . "}
        end tell' ");
    }
    
    /**
     * Convert input $colour string to an r,g,b (8 bit) array. 
     *
     * $colour may be either a hex string or a string that matches an entry 
     * in the _colours lookup list.
     * 
     * @param array|string $colour
     * @return array
     */
    function convertColourToArray($colour)
    {
        $result = false;
        if(is_array($colour) && count($colour) == 3) {
            $result = $colour;
        } else {
            $result = $this->getRgbFromHex($colour);
            if($result == false) {
                // not a hex colour - maybe a lookup?
                $result = $this->lookupColourFromString($colour);
            }
        }
        
        return $result;
    }
    
    /**
     * Set colour. 
     * $colour may be either an array of r,g,b (8 bit) or a hex string
     * or a string that matches an entry in the _colours lookup list.
     * 
     * @param array|string $colour
     * @return void
     */
    function setColour($colour)
    {
        $colour = $this->convertColourToArray($colour);
        if ($colour !== false) {
            $this->_colour = $colour;
        }
    }

    /**
     * Retrieve colour as an r,g,b (8 bit) array.
     * 
     * @return array
     */
    function getColour()
    {
        return $this->_colour;
    }
    
    /**
     * Add array of $addtionalColours to the look up table.
     */
    function addToLookupColours($additionalColours)
    {
        if(is_array($additionalColours)) {
            $this->_colours += $additionalColours;
        }
    }

    /**
     * Retrieve look-up table of colours
     * 
     *  @return array
     */
    function getLookupColours()
    {
        return $this->_colours;
    }
    
    /**
     * Return the background colour (as an rgb 8bit array) from
     * a given lookup string or false on failure.
     *
     * @return array|boolean
     */
    function lookupColourFromString($value)
    {
        $lookup = $this->_colours;
    
        $value = strtolower($value);
        if(isset($lookup[$value])) {
            $colour = $lookup[$value];
            if(is_string($colour)) { 
                return $this->getRgbFromHex($colour);
            } else {
                return $colour;
            }
        }
        return false; 
    }
    
    /**
     * Return an array of red, green and blue colours (in 8 bit space) from
     * a hex string as you'd fine specified in say CSS.
     *
     * @param string $value
     * @return array
     */
    function getRgbFromHex($value) 
    {
        $value = trim($value);
        $result = preg_match('/^([0-9a-f])([0-9a-f])([0-9a-f])$/i', $value, $colour);
        if (!$result) {
            $result = preg_match('/^([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i', $value, $colour);
            if (!$result) {
                return false;
            }
        }
        // remove the first element as that's the original string
        array_shift($colour);
        // convert to decimal
        $colour = array_map('hexdec', $colour);
        return $colour;
    }
    
    /**
     * Convert an array of red, green and blue colours (in 8 bit space) to
     * an array in 16 bit space.
     *
     * @param array $colour
     * @return array
     */
    function convertTo16bit($colour)
    {
        foreach ($colour as $i => $v) {
            $colour[$i] = ($v / 255) * 65535;
        }
        return $colour;
    }
    
    /**
     * Determine foreground colour based on brightness of background colour
     *
     * Algorithm from http://www.wilsonmar.com/1colors.htm:
     *     "A good rule of thumb is to take your background colour and compute 
     *      Y = 0.3R + 0.59G + 0.11B. If Y exceeds 0.5, use black foreground 
     *      text, otherwise use white."
     *
     * @note $bgColour is assumed to be an array of red, green and blue values
     * in 16 bit size (0 = black, 65535 = white)
     * 
     *
     * @param $bgColour is assumed to be an array of red, green and blue values
     * in 16 bit size (0 = black, 65535 = white)
     * @return array of r,g,b colours in 16 bit space
     */
    function getFgColour($bgColour)
    {
        // From http://www.wilsonmar.com/1colors.htm
        list($r, $g, $b) = $bgColour;
        $r /= 65535;
        $g /= 65535;
        $b /= 65535;
        
        $y = ($r * 0.3) + ($g * 0.59) + ($b * 0.11);    
        if ($y < 0.5) {
            return array('65535,65535,65535');
        } else {
            return array('0,0,0');
        }
    }
}
