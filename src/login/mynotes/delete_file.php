<?php
// if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Get the file path from the POST request
    // $filePath = isset($_POST['filePath']) ? $_POST['filePath'] : null;
    $filePath = __DIR__.'/uploads/'. $_POST['filePath'];
    // $filePath = __DIR__.'/uploads/'. "user_1/ss.png";

    // Check if the file path is provided and valid
    // if (!isset($filePath) || empty($filePath)) {
    //     http_response_code(400);
    //     echo json_encode(["success" => false, "message" => "Invalid file path."]);
    //     exit;
    // }

    // Attempt to delete the file
    if (unlink($filePath)) {
        header('Content-Type: application/json');
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to delete file.']);
    }
// } else {
//     http_response_code(405);
//     echo json_encode(['success' => false, 'message' => 'Method not allowed.']);
// }
?>
