resource "aws_lightsail_instance" "my_instance" {
  name              = "my-wordpress-instance"
  availability_zone = "your_az"  # AZ is not explicitly selectable in Lightsail, but you can specify a preferred AZ.

  blueprint_id = "wordpress_5_7_4"  # Select the WordPress blueprint (replace with the desired version)

  bundle_id = "your_instance_plan_id"  # Choose your instance plan (Instance Size)

  # Optional: Specify custom SSH key or use the default SSH key
  # ssh_key_name = "your_ssh_key_name"  # Replace with your SSH key name if using a custom SSH key
  #use_default_ssh_key = true  # Set to true if using the default SSH key
}
