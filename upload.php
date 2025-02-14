<?php
session_start(); // ต้องใส่เพื่อดึง session

include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
    $documentTitle = $_POST['document_title'];
    $department = $_POST['department'];
    $uploadDate = date("Y-m-d H:i:s");
    $deadline = $_POST['deadline'];
    $senderName = $_SESSION['user_id']; // ดึง user_id จาก session
    $fileName = basename($_FILES["file"]["name"]);
    $fileType = pathinfo($fileName, PATHINFO_EXTENSION); // ดึงนามสกุลไฟล์
    $targetDir = "uploads/";
    $newFileName = uniqid() . "." . $fileType; // สร้างชื่อไฟล์แบบสุ่ม
    $targetFilePath = $targetDir . $newFileName;
    $isActive = 1; // ตั้งค่าเริ่มต้นให้ isActive

    // ✅ ตรวจสอบประเภทไฟล์ (อนุญาตเฉพาะ PDF, XLS, XLSX)
    $allowedTypes = ['pdf', 'xls', 'xlsx'];
    if (!in_array(strtolower($fileType), $allowedTypes)) {
        echo "อนุญาตเฉพาะไฟล์ PDF และ Excel (.xls, .xlsx) เท่านั้น";
        exit;
    }

    if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)) {
        // ✅ แก้ไขคำสั่ง INSERT ให้บันทึกค่าครบทุกฟิลด์
        $sql = "INSERT INTO documents (document_content, department, upload_date, sender_name, deadline, file_name, isActive) 
                VALUES (?, ?, ?, ?, ?, ?, ?)";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssssssi", $documentTitle, $department, $uploadDate, $senderName, $deadline, $newFileName, $isActive);

        if ($stmt->execute()) {
            echo "อัปโหลดไฟล์สำเร็จ!";
        } else {
            echo "เกิดข้อผิดพลาด: " . $stmt->error;
        }

        $stmt->close(); // ปิด statement
    } else {
        echo "เกิดข้อผิดพลาดในการอัปโหลดไฟล์.";
    }
} else {
    echo "ไม่มีไฟล์ที่อัปโหลด.";
}
?>
