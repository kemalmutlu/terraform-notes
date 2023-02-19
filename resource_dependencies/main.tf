resource "local_file" "pet" {
    filename = var.filename
    content = "My favotite pet is Mr.Cat"

    depends_on = [
        random_pet.my-pet
    ]
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}