# SafariBooks
Download and generate *EPUB* of your favorite books from [*Safari Books Online*](https://www.safaribooksonline.com) library.  
I'm not responsible for the use of this program, this is only for *personal* and *educational* purpose.  
Before any usage please read the *O'Reilly*'s [Terms of Service](https://learning.oreilly.com/terms/).  

**This repo is forked from [*lorenzodifuccia*](https://github.com/lorenzodifuccia/safaribooks)**

## Overview:
  * [Requirements & Setup](#requirements--setup)
  * [Usage](#usage)

## Requirements & Setup:
```shell
$ git clone https://github.com/rafapc2/safaribooks.git
Cloning into 'safaribooks'...

$ cd safaribooks/
$ pip3 install -r requirements.txt

OR

$ pipenv install && pipenv shell
```  

The program depends of only two **Python 3** modules:
```python3
lxml>=4.1.1
requests>=2.20.0
```

The file **cookies.json** is needed for mantain the http session in Safari, if login fail, you must follow the following steps:
**TODO :(**

  
## Usage:
It's really simple to use, just choose a book from the library and replace in the following command:
  * X-es with its ID, 
  * `email:password` with your own. 

```shell
$ python3 safaribooks.py --cred "account_mail@mail.com:password01" XXXXXXXXXXXXX
```

The ID is the digits that you find in the URL of the book description page:  
`https://www.safaribooksonline.com/library/view/book-name/XXXXXXXXXXXXX/`  
Like: `https://www.safaribooksonline.com/library/view/test-driven-development-with/9781491958698/`  

for more info just type:
```shell
$ python3 safaribooks.py --help
```

  

