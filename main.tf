// create a null resource with basic fields and a provisioner
resource "null_resource" "null-tests" {
    triggers = {
        test = "test"
    }
    provisioner "local-exec" {
        command = "echo ${self.triggers.test}"
    }
}