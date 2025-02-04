locals {
  json_data = {
    url         = var.url,
    output_path = var.output_path
  }
}
resource "null_resource" "download" {
  provisioner "local-exec" {
    # args.get('url'), args.get('output_path')
    command = "echo '${jsonencode(local.json_data)}' | python ${path.module}/download.py '${var.url}' '${var.output_path}'"
  }

  triggers = {
    url         = var.url
    output_path = var.output_path
  }
}

resource "null_resource" "cleanup" {
  count = var.cleanup && var.output_path != null ? 1 : 0
  provisioner "local-exec" {
    command = "rm ${var.output_path}"
  }
}
