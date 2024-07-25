from PIL import Image

def resize_image(input_image_path, output_image_path, size):
    """
    Resize an image to the given size.

    :param input_image_path: path to the input image
    :param output_image_path: path to save the resized image
    :param size: tuple (width, height) of the desired size
    """
    try:
        with Image.open(input_image_path) as img:
            img_resized = img.resize(size)
            img_resized.save(output_image_path)
    except Exception as e:
        print(f"Error resizing image: {e}")

# Example usage:
input_image_path = 'assets/gifs/audubon.gif'
output_image_path = 'assets/gifs/audubon_resize.gif'
size = (1024, 294)

resize_image(input_image_path, output_image_path, size)
