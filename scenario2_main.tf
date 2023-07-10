resource "null_resource" "instance_metadata" {

  provisioner "local-exec" {

    command = <<EOF

      # Azure instance metadata endpoint URL

      metadata_endpoint="http://169.254.169.254/metadata/instance?api-version=2021-02-01"

      

      # Make the HTTP GET request and save response to a file

      curl -H "Metadata: true" $metadata_endpoint -o metadata.json

      

      # Print the content of the JSON file

      cat metadata.json

    EOF

  }

}