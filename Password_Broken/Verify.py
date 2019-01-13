# -*- coding: UTF-8 -*_
from PIL import Image
from pytesseract import *
import PIL.ImageOps
def initTable(threshold=140):
    table = []
    for i in range(256):
        if i < threshold:
            table.append(0)
        else:
            table.append(1)
    return table

im = Image.open('31.png')
#图片的处理过程
im = im.convert('L')
binaryImage = im.point(initTable(), '1')
im1 = binaryImage.convert('L')
im2 = PIL.ImageOps.invert(im1)
im3 = im2.convert('1')
im4 = im3.convert('L')
#将图片中字符裁剪保留
box = (30,10,90,28)
region = im4.crop(box)
#将图片字符放大
out = region.resize((120,38))
asd = pytesseract.image_to_string(out)
print asd
print (out.show())