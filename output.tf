output "file_path" {
  value = data.external.download.result.file_path
}

output "content" {
  value = data.external.download.result.content
}