<?php
    class PruebaLogica2{
        public function palabras($frase){
            $palabras = explode(" ", $frase);
            $nuevas_palabras = array();
            foreach ($palabras as $palabra) {
                if (strlen($palabra) > 5) {
                    $nuevas_palabras[] = strrev($palabra);
                } else {
                    $nuevas_palabras[] = $palabra;
                }
            }
            return implode(" ", $nuevas_palabras);
        }
    }
?>