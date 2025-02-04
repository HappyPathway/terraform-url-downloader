variables {
  url         = "http://example.com/file.txt"
  output_path = "/tmp/file.txt"
  cleanup     = true
}

run "download_file" {
  command = apply

  assert {
    condition     = fileexists(var.output_path)
    error_message = "File was not downloaded successfully"
  }
}

run "cleanup_file" {
  command = apply

  assert {
    condition     = !fileexists(var.output_path)
    error_message = "File was not cleaned up successfully"
  }
}
