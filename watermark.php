<?php

$image = $_GET['img'];
switch (strtolower(end(explode('.', $image)))) {
    case 'jpeg':
    case 'jpg':
        $im = imagecreatefromjpeg($_SERVER['DOCUMENT_ROOT'] . $image);
        $stamp = imagecreatefrompng('/images/watermark.png');
        break;
    case 'gif':
        $im = imagecreatefromgif($_SERVER['DOCUMENT_ROOT'] . $image);
        $stamp = imagecreatefromgif('/images/watermark.gif');
        break;
    case 'png':
        $im = imagecreatefrompng($_SERVER['DOCUMENT_ROOT'] . $image);
        $stamp = imagecreatefrompng('/images/watermark.png');
        break;
    default:
        exit();

}
// Установка полей для штампа и получение высоты/ширины штампа
$marge_right = 10;
$marge_bottom = 10;
$sx = imagesx($stamp);
$sy = imagesy($stamp);

// Копирование изображения штампа на фотографию с помощью смещения края
// и ширины фотографии для расчета позиционирования штампа.
imagecopy($im, $stamp, imagesx($im) - $sx - $marge_right, imagesy($im) - $sy - $marge_bottom, 0, 0, imagesx($stamp), imagesy($stamp));

// Вывод и освобождение памяти
header('Content-type: image/png');
imagepng($im);
imagedestroy($im);