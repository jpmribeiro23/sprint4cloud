#Este arquivo permite visualizar o ID e o endereço público dos recursos criados.


output "ocr_server_id" {
  value = aws_instance.ocr_server.id
}

output "ocr_server_public_ip" {
  value = aws_instance.ocr_server.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.ocr_images_bucket.bucket
}
