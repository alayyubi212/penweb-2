<?php

class Animal{
    public $animals;
    public function __construct($ar_animal)
    {
        $this->animals = $ar_animal;
    }

    public function index(){
        foreach ($this->animals as $animal){
            echo "- $animal <br/>";
        }
    }

    public function store($animal){
        $this->animals[] = $animal;

    }

    public function update($index, $animal){
        $this->animals[$index] = $animal;
    }

    public function destroy($index){
        unset($this->animals[$index]);
    }
}

#membuat objek

$animal = new Animal(["ayam", "ikan"]);

echo "index - Menampilkan seluruh hewan <br/>";
$animal->index();
echo "<br/>";

echo "store - Menambahkan hewan baru <br/>";
$animal->store("burung");
$animal->index ();
echo "<br/>";

echo "upsate - Mengupdate hewan <br/>";
$animal->update(0, "kucing angora");
$animal->index ();
echo "<br/>";

echo "destroy - Mengupdate hewan <br/>";
$animal->destroy(1);
$animal->index ();
echo "<br/>";
?>