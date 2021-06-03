
<!--CRUD-->

<?php
include "config.php";

$name = $_POST["name"];


 // CREATE

if (isset($_POST["submit"])) {
    $sql = ("INSERT INTO `employee`(`name`) VALUES(?)");
    $query = $pdo -> prepare($sql);
    $query -> execute([$name]);
    $success = '<div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Данные успешно отправлены!</strong> Вы можете закрыть это сообщение.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
                </div>';
}
else {
  echo "error";
}

// READ

$sql = $pdo -> prepare(" SELECT * FROM `employee` ");
$sql -> execute();
$result = $sql -> fetchAll();

// UPDATE

$editName = $_POST["editName"];
$getId = $_GET["idСотрудника"];

if (isset ($_POST["editSubmit"])) {
  $sqll = "UPDATE employee SET name=? WHERE idСотрудника=?";
  $querys = $pdo -> prepare($sqll);
  $querys = execute([$editName, $getId]);
  header("Location: ". $_SERVER['HTTP_REFERER']);
}
else {
  echo "error";
}

//DELETE

if (isset($_POST['deleteSubmit'])) {
    $sql = "DELETE FROM `employee` WHERE idСотрудника=?";
    $query = $pdo -> prepare($sql);
    $query = execute([$getId]);
    header("Location: ". $_SERVER["HTTP REFERER"]);
}
else {
  echo "error";
}
?>
