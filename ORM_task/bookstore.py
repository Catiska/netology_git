import json

import sqlalchemy
from sqlalchemy.orm import sessionmaker
from models import *

from paths import DSN


def create_tables(engine):
    Base.metadata.drop_all(engine)
    Base.metadata.create_all(engine)


def get_publisher():
    id_input = int(input('Enter publisher_id: '))
    return Publisher(id=id_input)


def search_shop(session):
    publ_name = None
    publ_id = None
    publisher_input = input('Введите название издательства или его идентификатор: ')
    if publisher_input.isdigit():
        publ_id = publisher_input
    else:
        publ_name = publisher_input
    print('Издательство продается в магазинах: ')
    for shop in session.query(Shop).join(Stock).join(Book).join(Publisher). \
            filter((Publisher.name == publ_name) | (Publisher.id == publ_id)).all():
        print(shop)


engine = sqlalchemy.create_engine(DSN)
create_tables(engine)

publisher = Publisher

Session = sessionmaker(bind=engine)
session = Session()


search_shop(session)
session.close()


# for shop in shops.all():
#     print(shop.id, shop.name)

# with open('fixtures/tests_data.json', 'r') as fd:
#     data = json.load(fd)
#
# for record in data:
#     model = {
#         'publisher': Publisher,
#         'shop': Shop,
#         'book': Book,
#         'stock': Stock,
#         'sale': Sale,
#     }[record.get('model')]
#     session.add(model(id=record.get('pk'), **record.get('fields')))
#
# session.commit()
# session.close()
