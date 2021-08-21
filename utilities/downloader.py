import os,requests,shutil

def download_image(image_url,cache_folder,backdrop=False):
    poster_file_name = image_url[1:]
    poster_path = os.path.join(cache_folder,poster_file_name)

    if backdrop:
        poster_url = f"https://image.tmdb.org/t/p/w1920_and_h800_multi_faces{image_url}"


    if os.path.exists(poster_path):
        return poster_path

    poster_url = f"https://image.tmdb.org/t/p/w1920_and_h800_multi_faces{image_url}"


    response = requests.get(poster_url, stream=True) # open url with request.get method
    if response.status_code == 200:
        with open(poster_path,"wb") as f:
            response.raw.decode_content = True
            shutil.copyfileobj(response.raw,f)

    return poster_path

if __name__ == '__main__':
    download_image("/uHA5COgDzcxjpYSHHulrKVl6ByL.jpg",r"D:\workshop2\cache_folder")

