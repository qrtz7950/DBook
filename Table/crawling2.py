from datetime import datetime
from urllib.request import Request, urlopen

from bs4 import BeautifulSoup
import pandas as pd

def crawling_naverbook():
    results = []

    for book_id in range(1, 100+1):

        url = 'https://book.naver.com/bookdb/book_detail.nhn?bid=%d' % book_id

        # crawling
        try:
            request = Request(url)
            response = urlopen(request)
            receive = response.read()
            html = receive.decode('utf-8', 'replace')
            html = html.replace('&#x0D;', '')
            print('%s: success for request[%s]' % (datetime.now(), url))
        except Exception as e:
            print('%s: %s' % (e, datetime.now()))

        try:
            # parsing
            bs = BeautifulSoup(html, "html.parser")


            tag_spot = bs.find('div', attrs={'class':'spot'})
            tag_book_info = tag_spot.find('div', attrs={'class':'book_info'})
            tag_h2 = tag_book_info.find('h2')

            # ------------------책이름 book_name
            for tag_a in tag_h2.findAll('a', href=True):
                book_name_before = tag_a.text
                book_name_split = book_name_before.split('\xa0') # 공백문자 \xa0로 제목/부제로 분해 후, 제목만 남김
                n = len(book_name_split)
                if n is 3: # 1. [제목 / 권수 / 부제] 로 나뉘는 경우
                    book_name_ori = book_name_split[0]
                    book_name_num = book_name_split[1]
                    book_name = book_name_ori +" "+ book_name_num

                elif n is 2 :  # 2. 제목+권수 , 제목+부제
                    book_name = book_name_split[0] +" : "+ book_name_split[1]
                else : # 제목
                    book_name = book_name_split[0]

            # -------------------책표지 cover
            tag_thumb_type_end = tag_book_info.find('div', attrs={'class':'thumb type_end'})
            tag_thumb_type = tag_thumb_type_end.find('div')
            tag_a2 = tag_thumb_type.find('a')
            for tag_img in tag_a2('img'):
                cover = tag_img.get('src')

            # ---------------작가, 역자, 춣판사, 출간일
            tag_book_info_inner = tag_book_info.find('div', attrs={'class': 'book_info_inner'})
            tag_book_info_div1 = tag_book_info_inner.findAll('div')
            tag_book_info_div1_split = tag_book_info_div1[2].text.split('|')
            m = len(tag_book_info_div1_split)

            # 평점
            tag_txt_desc_point = tag_book_info_inner.find('a', attrs={'id':'txt_desc_point'})
            tag_strongs = tag_txt_desc_point.findAll('strong')
            rating = tag_strongs[0].text
            rating = str(rating)
            rating = rating.replace("점","")

            # 가격
            tag_price_area = tag_book_info_inner.find('div', attrs={'class','price_area'})
            tags_price_div = tag_price_area.findAll('div')
            tags_price_div[0] = str(tags_price_div)
            if "retail" in tags_price_div[0]:
                tag_retail = tag_price_area.find('div', attrs={'class', 'retail'})
                tag_strong = tag_retail.find('strong')
                price = tag_strong.text
            elif "lowest" in tags_price_div[0]:
                tag_price = tag_price_area.find('span', attrs={'class', 'price'})
                price = tag_price.text
            else:
                price = "가격 정보 없음"

            '''
            if m is 3: # 1. 역자가 없는 경우
                author_before = tag_book_info_div1_split[0].split(' ')
                o = len(author_before)
                if o is 2:
                    author = tag_book_info_div1_split[0].split(' ')[1]
                if o >= 3:
                    author = tag_book_info_div1_split[0].split(' ')[1] + " " + tag_book_info_div1_split[0].split(' ')[2]
                translator = "   "
                publisher = tag_book_info_div1_split[1].split('\n')[0]
                published_date = tag_book_info_div1_split[2]

            if m is 4: # 2. 역자가 있는 경우
                author_before = tag_book_info_div1_split[0].split(' ')
                o = len(author_before)
                if o is 2:
                    author = tag_book_info_div1_split[0].split(' ')[1]
                if o >= 3:
                    author = tag_book_info_div1_split[0].split(' ')[1] + " " + tag_book_info_div1_split[0].split(' ')[2]
                translator = tag_book_info_div1_split[1].split(' ')[1]
                publisher = tag_book_info_div1_split[2].split('\n')[0]
                published_date = tag_book_info_div1_split[3]

            # -------------------(페이지 form_detail, ISBN isbn)
            if tag_book_info_div1[3] != tag_book_info_inner.find('div', attrs={'class':'tit_ori'}):
                # 1. 원제목 div tit_ori가 없을 경우
                # 페이지
                tag_a6 = tag_book_info_div1[3].text
                if "페이지" in tag_a6:
                    form_detail_before = tag_a6.split('|')[0]
                    form_detail = form_detail_before.split(' ')[1]
                    # ISBN
                    tag_a6 = tag_book_info_div1[3].text
                    isbn_before = tag_a6.split('|')[1]
                    isbn = isbn_before.split('  ')[1]

                    if tag_book_info_div1[6] == tag_book_info_inner.find('div', attrs={'class':'ebook'}):
                        is_ebook = "Yes"
                    if tag_book_info_div1[6] != tag_book_info_inner.find('div', attrs={'class':'ebook'}):
                        is_ebook = "No"
                else :
                    form_detail = "  "
                    isbn = tag_a6.split('  ')[1]
                    is_ebook = "No"

            if tag_book_info_div1[3] == tag_book_info_inner.find('div', attrs={'class':'tit_ori'}):
                # 2. 원제목 div tit_ori가 있을 경우
                # 페이지
                tag_a6 = tag_book_info_div1[4].text
                form_detail_before = tag_a6.split('|')[0]
                form_detail = form_detail_before.split(' ')[1]
                # ISBN
                tag_a6 = tag_book_info_div1[4].text
                isbn_before = tag_a6.split('|')[1]
                isbn = isbn_before.split('  ')[1]

                if tag_book_info_div1[7] == tag_book_info_inner.find('div', attrs={'class':'ebook'}):
                    is_ebook = "Yes"
                if tag_book_info_div1[7] != tag_book_info_inner.find('div', attrs={'class':'ebook'}):
                    is_ebook = "No"


            tag_content = bs.find('div', attrs={'id': 'content'})
            tags_div_section_detail = tag_content.findAll('div')
            tags_span = tag_content.findAll('span', attrs={'class': None})
            print(tags_span)
            # 책소개에 정보가 있는 경우
            if tags_div_section_detail[0] != tag_content.find('div', attrs={'class':'section section info_not'}):

                if "책소개" in tags_span[0].text:
                    book_introduction_before = tag_content.find('div', attrs={'id':'bookIntroContent'})
                    book_introduction = book_introduction_before.find('p')
                    book_introduction = str(book_introduction)
                    book_introduction = book_introduction.replace("</br>", "")

                elif "책소개" in tags_span[1].text:
                    book_introduction_before = tag_content.find('div', attrs={'id':'bookIntroContent'})
                    book_introduction = book_introduction_before.find('p')
                    book_introduction = str(book_introduction)
                    book_introduction = book_introduction.replace("</br>", "")
                else:
                    book_introduction = "  "

                if "저자소개" in tags_span[1].text:
                    author_introduction_before = tag_content.find('div', attrs={'id': 'authorIntroContent'})
                    author_introduction = author_introduction_before.find('p')
                    author_introduction = str(author_introduction)
                    author_introduction = author_introduction.replace("</br>", "")
                elif "저자소개" in tags_span[2].text:
                    author_introduction_before = tag_content.find('div', attrs={'id': 'authorIntroContent'})
                    author_introduction = author_introduction_before.find('p')
                    author_introduction = str(author_introduction)
                    author_introduction = author_introduction.replace("</br>", "")
                elif "저자소개" in tags_span[3].text:
                    author_introduction_before = tag_content.find('div', attrs={'id': 'authorIntroContent'})
                    author_introduction = author_introduction_before.find('p')
                    author_introduction = str(author_introduction)
                    author_introduction = author_introduction.replace("</br>", "")
                else:
                    author_introduction = "  "

                if "목차" in tags_span[1].text:
                    contents_before = tag_content.find('div', attrs={'id': 'tableOfContentsContent'})
                    contents = contents_before.find('p')
                    contents = str(contents)
                    contents = contents.replace("</br>", "")
                elif "목차" in tags_span[2].text:
                    contents_before = tag_content.find('div', attrs={'id': 'tableOfContentsContent'})
                    contents = contents_before.find('p')
                    contents = str(contents)
                    contents = contents.replace("</br>", "")
                elif "목차" in tags_span[3].text:
                    contents_before = tag_content.find('div', attrs={'id': 'tableOfContentsContent'})
                    contents = contents_before.find('p')
                    contents = str(contents)
                    contents = contents.replace("</br>", "")
                elif "목차" in tags_span[4].text:
                    contents_before = tag_content.find('div', attrs={'id': 'tableOfContentsContent'})
                    contents = contents_before.find('p')
                    contents = str(contents)
                    contents = contents.replace("</br>", "")
                elif "목차" in tags_span[5].text:
                    contents_before = tag_content.find('div', attrs={'id': 'tableOfContentsContent'})
                    contents = contents_before.find('p')
                    contents = str(contents)
                    contents = contents.replace("</br>", "")
                else :
                    contents = "  "

            # 책소개에 정보가 없는 경우
            elif tags_div_section_detail[0] == tag_content.find('div', attrs={'class':'section section info_not'}):
                book_introduction = "  "
                author_introduction = "  "
                contents = "  "


            tag_navi = bs.find('ul', attrs={'class': 'navi'})
            tags_li = tag_navi.findAll('li')
            li = len(tags_li)
            if li == 3:
                tag_select1 = tag_navi.find('li', attrs={'class': 'select'})
                category1 = tag_select1.find('a').text
                category_text = str(category1)
                category2 = "  "
                category3 = "  "
            elif li == 5:
                tag_select1 = tag_navi.find('li', attrs={'class': 'select'})
                category1 = tag_select1.find('a').text
                tag_select2 = tag_navi.find('li', attrs={'class': 'select2'})
                category2 = tag_select2.find('a').text
                category_text = str(category2)
                category3 = "  "
            elif li == 7:
                tag_select1 = tag_navi.find('li', attrs={'class': 'select'})
                category1 = tag_select1.find('a').text
                tag_select2 = tag_navi.find('li', attrs={'class': 'select2'})
                category2 = tag_select2.find('a').text
                tag_select3 = tag_navi.find('li', attrs={'class': 'select3'})
                category3 = tag_select3.find('a').text
                category_text = str(category3)
            elif li == 9:
                tag_select1 = tag_navi.find('li', attrs={'class': 'select'})
                category1 = tag_select1.find('a').text
                tag_select2 = tag_navi.find('li', attrs={'class': 'select2'})
                category2 = tag_select2.find('a').text
                tag_select3 = tag_navi.find('li', attrs={'class': 'select3'})
                category3 = tag_select3.find('a').text
                category_text = str(category3)
            print(category_text)
            tag_ul = bs.find('ul', attrs={'class': 'history'})
            tags_a = tag_ul.findAll('a')


            if category_text in tags_a[0].text:
                category_href = str(tags_a[0].get('href'))
                category_split = category_href.split('code=')[1]
                parent_no1 = ""
                parent_no2 = ""
                category_no = category_split
                print(category_no)
            elif category_text in tags_a[1].text:
                category_href = str(tags_a[1].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[2].text:
                category_href = str(tags_a[2].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[3].text:
                category_href = str(tags_a[3].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[4].text:
                category_href = str(tags_a[4].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[5].text:
                category_href = str(tags_a[5].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[6].text:
                category_href = str(tags_a[6].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[7].text:
                category_href = str(tags_a[7].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            elif category_text in tags_a[8].text:
                category_href = str(tags_a[8].get('href'))
                category_split = category_href.split('code=')[1]
                if len(category_split) == 9:
                    parent_no1 = category_split[0:3]
                    parent_no2 = category_split[0:6]
                    category_no = category_split
                    print(parent_no1 + " > " + parent_no2 + " > " + category_no)
                elif len(category_split) == 6:
                    parent_no1 = category_split[0:3]
                    parent_no2 = ""
                    category_no = category_split
                    print(parent_no1 + " > " + category_no)
                elif len(category_split) == 3:
                    parent_no1 = ""
                    parent_no2 = ""
                    category_no = category_split
                    print(category_no)
            else:
                parent_no1 = "!!!"
                parent_no2 = "@@@"
                category_no = "###"
            '''
            
        except :
            book_id = "No data"
            rating = "No data"
            price = "No data"
            '''
            book_name = "No data"
            cover = "No data"
            author = "No data"
            translator = "No data"
            publisher = "No data"
            published_date = "No data"
            form_detail = "No data"
            isbn = "No data"
            is_ebook = "No data"
            book_introduction = "No data"
            author_introduction = "No data"
            contents = "No data"
            category1 = "No data"
            parent_no1 = "No data"
            category2 = "No data"
            parent_no2 = "No data"
            category3 = "No data"
            category_no = "No data"
            '''
        '''
        result = ((book_id, book_name, author, publisher, published_date, translator, cover))
        result2 = ((form_detail, isbn, is_ebook))
        result3 = ((category1, category2, category3))
        result4 = ((book_introduction))
        result5 = ((author_introduction))
        result6 = ((contents))
        '''
        result = ((book_id, book_name, rating, price))
        print(result)

        '''
        #책번호, 책제목:(부제), 저자, 출판사, 출간일, 역자
        print(result)
        #페이지수, ISBN, ebook유무 여부
        print(result2)
        print("카테고리")
        print(result3)
        print("책소개")
        print(result4)
        print("저자소개")
        print(result5)
        print("목차")
        print(result6)

        print("")
        results.append((book_id, book_name, author, publisher, published_date, translator, cover, form_detail, isbn,
                        is_ebook, category1, category2, category3, parent_no1, parent_no2, category_no, book_introduction, author_introduction,
                       contents))
        '''
        results.append((book_id, book_name, rating, price))


    '''
    # Store
    #print(result)
    #store
    table = pd.DataFrame(results, columns = ['book_id', 'book_name', 'author', 'publisher', 'published_date',
                                             'translator', 'cover', 'form_detail', 'isbn', 'is_ebook',
                                             'category1',  'category2', 'category3',
                                             'parent_no1', 'parent_no2', 'category_no', 'book_introduction',
                                             'author_introduction', 'contents'])
    table.to_csv('__result__/DBook_db039.csv', encoding='utf-8', mode='w', index=True)
    '''
    table = pd.DataFrame(results, columns = ['book_id', 'book_name', 'rating', 'price'])
    table.to_csv('__result__/DBook_RatPri00', encoding='utf-8', mode='w', index=True)


if __name__ == '__main__':
    crawling_naverbook()