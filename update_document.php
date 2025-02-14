<?php
// เชื่อมต่อฐานข้อมูล
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['file_name']) && isset($_FILES['file'])) {
    $targetDir = "uploads/";
    $fileName = $_POST['file_name']; // รับชื่อไฟล์ที่ต้องการแก้ไข
    $targetFilePath = $targetDir . $fileName;

    if (file_exists($targetFilePath)) {
        // ทับไฟล์เดิม
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)) {
            $uploadDate = date("Y-m-d H:i:s");
            $sql = "UPDATE documents SET upload_date='$uploadDate' WHERE file_name='$fileName'";
            if (mysqli_query($conn, $sql)) {
                echo "แก้ไขไฟล์สำเร็จ!";
            } else {
                echo "เกิดข้อผิดพลาดในการอัปเดตฐานข้อมูล: " . mysqli_error($conn);
            }
        } else {
            echo "เกิดข้อผิดพลาดในการทับไฟล์.";
        }
    } else {
        echo "ไม่พบไฟล์ที่ต้องการแก้ไข.";
    }
} else {
    echo "ข้อมูลไม่ครบถ้วน.";
}

header("Location: index.php");
exit;
?>
