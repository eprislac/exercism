import re

def is_isogram(string):
    regex = re.compile('[^a-zA-Z]')
    txt = regex.sub('', string.lower())
    return list(set(txt)).__len__()  == txt.__len__()

