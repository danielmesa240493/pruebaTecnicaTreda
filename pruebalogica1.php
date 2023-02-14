<?php
    class PruebaLogica1{
      public function multiplos($n){
        $suma = 0;
        for ($i = 1; $i < $n; $i++) {
          if ($i % 3 == 0 || $i % 5 == 0) {
            $suma += $i;
          }
        }
        return $suma;
      }
    }

    $clase = new PruebaLogica1();
    echo $clase->multiplos(10);
?>  
